class StepSerializer < ActiveModel::Serializer
  attributes :_id, :message_type, :command, :sequence_id

  # TODO: This is almost certainly wrong. I shouldn't need to write this method.
  def sequence_id
    object.sequence._id.to_s
  end
end
