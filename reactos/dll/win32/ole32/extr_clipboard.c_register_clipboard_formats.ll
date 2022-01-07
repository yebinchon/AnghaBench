; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_register_clipboard_formats.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_register_clipboard_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@register_clipboard_formats.OwnerLink = internal constant [10 x i8] c"OwnerLink\00", align 1
@register_clipboard_formats.FileName = internal constant [9 x i8] c"FileName\00", align 1
@register_clipboard_formats.FileNameW = internal constant [10 x i8] c"FileNameW\00", align 1
@register_clipboard_formats.DataObject = internal constant [11 x i8] c"DataObject\00", align 1
@register_clipboard_formats.EmbeddedObject = internal constant [16 x i8] c"Embedded Object\00", align 16
@register_clipboard_formats.EmbedSource = internal constant [13 x i8] c"Embed Source\00", align 1
@register_clipboard_formats.CustomLinkSource = internal constant [19 x i8] c"Custom Link Source\00", align 16
@register_clipboard_formats.LinkSource = internal constant [12 x i8] c"Link Source\00", align 1
@register_clipboard_formats.ObjectDescriptor = internal constant [18 x i8] c"Object Descriptor\00", align 16
@register_clipboard_formats.LinkSourceDescriptor = internal constant [23 x i8] c"Link Source Descriptor\00", align 16
@register_clipboard_formats.OlePrivateData = internal constant [17 x i8] c"Ole Private Data\00", align 16
@register_clipboard_formats.WineMarshalledDataObject = internal constant [27 x i8] c"Wine Marshalled DataObject\00", align 16
@ownerlink_clipboard_format = common dso_local global i8* null, align 8
@filename_clipboard_format = common dso_local global i8* null, align 8
@filenameW_clipboard_format = common dso_local global i8* null, align 8
@dataobject_clipboard_format = common dso_local global i8* null, align 8
@embedded_object_clipboard_format = common dso_local global i8* null, align 8
@embed_source_clipboard_format = common dso_local global i8* null, align 8
@custom_link_source_clipboard_format = common dso_local global i8* null, align 8
@link_source_clipboard_format = common dso_local global i8* null, align 8
@object_descriptor_clipboard_format = common dso_local global i8* null, align 8
@link_source_descriptor_clipboard_format = common dso_local global i8* null, align 8
@ole_private_data_clipboard_format = common dso_local global i8* null, align 8
@wine_marshal_clipboard_format = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @register_clipboard_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_clipboard_formats() #0 {
  %1 = call i8* @RegisterClipboardFormatW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @register_clipboard_formats.OwnerLink, i64 0, i64 0))
  store i8* %1, i8** @ownerlink_clipboard_format, align 8
  %2 = call i8* @RegisterClipboardFormatW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @register_clipboard_formats.FileName, i64 0, i64 0))
  store i8* %2, i8** @filename_clipboard_format, align 8
  %3 = call i8* @RegisterClipboardFormatW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @register_clipboard_formats.FileNameW, i64 0, i64 0))
  store i8* %3, i8** @filenameW_clipboard_format, align 8
  %4 = call i8* @RegisterClipboardFormatW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @register_clipboard_formats.DataObject, i64 0, i64 0))
  store i8* %4, i8** @dataobject_clipboard_format, align 8
  %5 = call i8* @RegisterClipboardFormatW(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @register_clipboard_formats.EmbeddedObject, i64 0, i64 0))
  store i8* %5, i8** @embedded_object_clipboard_format, align 8
  %6 = call i8* @RegisterClipboardFormatW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @register_clipboard_formats.EmbedSource, i64 0, i64 0))
  store i8* %6, i8** @embed_source_clipboard_format, align 8
  %7 = call i8* @RegisterClipboardFormatW(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @register_clipboard_formats.CustomLinkSource, i64 0, i64 0))
  store i8* %7, i8** @custom_link_source_clipboard_format, align 8
  %8 = call i8* @RegisterClipboardFormatW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @register_clipboard_formats.LinkSource, i64 0, i64 0))
  store i8* %8, i8** @link_source_clipboard_format, align 8
  %9 = call i8* @RegisterClipboardFormatW(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @register_clipboard_formats.ObjectDescriptor, i64 0, i64 0))
  store i8* %9, i8** @object_descriptor_clipboard_format, align 8
  %10 = call i8* @RegisterClipboardFormatW(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @register_clipboard_formats.LinkSourceDescriptor, i64 0, i64 0))
  store i8* %10, i8** @link_source_descriptor_clipboard_format, align 8
  %11 = call i8* @RegisterClipboardFormatW(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @register_clipboard_formats.OlePrivateData, i64 0, i64 0))
  store i8* %11, i8** @ole_private_data_clipboard_format, align 8
  %12 = call i8* @RegisterClipboardFormatW(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @register_clipboard_formats.WineMarshalledDataObject, i64 0, i64 0))
  store i8* %12, i8** @wine_marshal_clipboard_format, align 8
  ret void
}

declare dso_local i8* @RegisterClipboardFormatW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
