; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_process_data_pdu.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_process_data_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.stream }
%struct.stream = type { i32*, i32*, i32, i32*, i32* }

@RDP_MPPC_COMPRESSED = common dso_local global i32 0, align 4
@RDP_MPPC_DICT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"error decompressed packet size exceeds max\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"error while decompressing packet\0A\00", align 1
@True = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Received Control PDU\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Received Sync PDU\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Received Logon PDU\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"data PDU %d\0A\00", align 1
@False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.stream*, i64*)* @process_data_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_data_pdu(%struct.TYPE_10__* %0, %struct.stream* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.stream*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.stream*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.stream* %1, %struct.stream** %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store %struct.stream* %18, %struct.stream** %14, align 8
  %19 = load %struct.stream*, %struct.stream** %6, align 8
  %20 = call i32 @in_uint8s(%struct.stream* %19, i32 6)
  %21 = load %struct.stream*, %struct.stream** %6, align 8
  %22 = load i64, i64* %11, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @in_uint16(%struct.stream* %21, i32 %23)
  %25 = load %struct.stream*, %struct.stream** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @in_uint8(%struct.stream* %25, i32 %26)
  %28 = load %struct.stream*, %struct.stream** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @in_uint8(%struct.stream* %28, i32 %29)
  %31 = load %struct.stream*, %struct.stream** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @in_uint16(%struct.stream* %31, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %34, 18
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @RDP_MPPC_COMPRESSED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %111

40:                                               ; preds = %3
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @RDP_MPPC_DICT_SIZE, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = load %struct.stream*, %struct.stream** %6, align 8
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @mppc_expand(%struct.TYPE_10__* %47, i32* %50, i32 %51, i32 %52, i64* %12, i64* %13)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %46
  %58 = load %struct.stream*, %struct.stream** %14, align 8
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i8* @realloc(i32* %60, i64 %61)
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 262, i32* %67, align 8
  %68 = load i32, i32* @True, align 4
  store i32 %68, i32* %4, align 4
  br label %141

69:                                               ; preds = %57
  %70 = load i8*, i8** %15, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.stream*, %struct.stream** %14, align 8
  %73 = getelementptr inbounds %struct.stream, %struct.stream* %72, i32 0, i32 1
  store i32* %71, i32** %73, align 8
  %74 = load %struct.stream*, %struct.stream** %14, align 8
  %75 = getelementptr inbounds %struct.stream, %struct.stream* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = add nsw i64 %80, %81
  %83 = inttoptr i64 %82 to i8*
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @memcpy(i32* %76, i8* %83, i64 %84)
  %86 = load i64, i64* %13, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.stream*, %struct.stream** %14, align 8
  %89 = getelementptr inbounds %struct.stream, %struct.stream* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.stream*, %struct.stream** %14, align 8
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.stream*, %struct.stream** %14, align 8
  %94 = getelementptr inbounds %struct.stream, %struct.stream* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load %struct.stream*, %struct.stream** %14, align 8
  %99 = getelementptr inbounds %struct.stream, %struct.stream* %98, i32 0, i32 3
  store i32* %97, i32** %99, align 8
  %100 = load %struct.stream*, %struct.stream** %14, align 8
  %101 = getelementptr inbounds %struct.stream, %struct.stream* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.stream*, %struct.stream** %14, align 8
  %104 = getelementptr inbounds %struct.stream, %struct.stream* %103, i32 0, i32 0
  store i32* %102, i32** %104, align 8
  %105 = load %struct.stream*, %struct.stream** %14, align 8
  %106 = getelementptr inbounds %struct.stream, %struct.stream* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.stream*, %struct.stream** %14, align 8
  %109 = getelementptr inbounds %struct.stream, %struct.stream* %108, i32 0, i32 4
  store i32* %107, i32** %109, align 8
  %110 = load %struct.stream*, %struct.stream** %14, align 8
  store %struct.stream* %110, %struct.stream** %6, align 8
  br label %111

111:                                              ; preds = %69, %3
  %112 = load i32, i32* %8, align 4
  switch i32 %112, label %136 [
    i32 128, label %113
    i32 133, label %117
    i32 129, label %119
    i32 130, label %121
    i32 134, label %125
    i32 131, label %128
    i32 132, label %132
  ]

113:                                              ; preds = %111
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = load %struct.stream*, %struct.stream** %6, align 8
  %116 = call i32 @process_update_pdu(%struct.TYPE_10__* %114, %struct.stream* %115)
  br label %139

117:                                              ; preds = %111
  %118 = call i32 @DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %139

119:                                              ; preds = %111
  %120 = call i32 @DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %139

121:                                              ; preds = %111
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = load %struct.stream*, %struct.stream** %6, align 8
  %124 = call i32 @process_pointer_pdu(%struct.TYPE_10__* %122, %struct.stream* %123)
  br label %139

125:                                              ; preds = %111
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = call i32 @ui_bell(%struct.TYPE_10__* %126)
  br label %139

128:                                              ; preds = %111
  %129 = call i32 @DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = call i32 @event_logon(%struct.TYPE_10__* %130)
  br label %139

132:                                              ; preds = %111
  %133 = load %struct.stream*, %struct.stream** %6, align 8
  %134 = load i64*, i64** %7, align 8
  %135 = call i32 @process_disconnect_pdu(%struct.stream* %133, i64* %134)
  br label %139

136:                                              ; preds = %111
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @unimpl(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %136, %132, %128, %125, %121, %119, %117, %113
  %140 = load i32, i32* @False, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %65
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @in_uint8s(%struct.stream*, i32) #1

declare dso_local i32 @in_uint16(%struct.stream*, i32) #1

declare dso_local i32 @in_uint8(%struct.stream*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @mppc_expand(%struct.TYPE_10__*, i32*, i32, i32, i64*, i64*) #1

declare dso_local i8* @realloc(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @process_update_pdu(%struct.TYPE_10__*, %struct.stream*) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @process_pointer_pdu(%struct.TYPE_10__*, %struct.stream*) #1

declare dso_local i32 @ui_bell(%struct.TYPE_10__*) #1

declare dso_local i32 @event_logon(%struct.TYPE_10__*) #1

declare dso_local i32 @process_disconnect_pdu(%struct.stream*, i64*) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
