[condition][]xcb object=xcb : XOMContainerBean()
[condition][]Evaluate=eval
[condition][]the {field} is populated=((new Populated()).isPopulated((xcb.xpath({field})).stringValue()))
[condition][]the {field} is not populated=((new Populated()).isNotPopulated(xcb.xpath({field}).stringValue()))
[consequence][]the error code {code} with message {msg} for the field {field}=xcb.logError({code},{msg},{field});
[condition][]the field_tag {field} is exists=xcb.xpath({field}).booleanValue()