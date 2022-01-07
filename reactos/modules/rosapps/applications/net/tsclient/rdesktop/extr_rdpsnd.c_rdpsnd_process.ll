; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd.c_rdpsnd_process.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd.c_rdpsnd_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i8*, i32* }
%struct.TYPE_17__ = type { i64, i64 }

@rdpsnd_process.tick = internal global i64 0, align 8
@rdpsnd_process.format = internal global i64 0, align 8
@rdpsnd_process.packet_index = internal global i32 0, align 4
@rdpsnd_process.awaiting_data_packet = internal global i8* null, align 8
@MAX_FORMATS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"RDPSND: Invalid format index\0A\00", align 1
@False = common dso_local global i8* null, align 8
@True = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"RDPSND packet type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*)* @rdpsnd_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdpsnd_process(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %8 = load i8*, i8** @rdpsnd_process.awaiting_data_packet, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %77

10:                                               ; preds = %2
  %11 = load i64, i64* @rdpsnd_process.format, align 8
  %12 = load i64, i64* @MAX_FORMATS, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %132

16:                                               ; preds = %10
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i64, i64* @rdpsnd_process.format, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %22, %16
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = call i32 (...) @wave_out_open()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = load i64, i64* @rdpsnd_process.tick, align 8
  %41 = load i32, i32* @rdpsnd_process.packet_index, align 4
  %42 = call i32 @rdpsnd_send_completion(%struct.TYPE_18__* %39, i64 %40, i32 %41)
  br label %132

43:                                               ; preds = %35, %29
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @rdpsnd_process.format, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = call i32 @wave_out_set_format(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %43
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = load i64, i64* @rdpsnd_process.tick, align 8
  %55 = load i32, i32* @rdpsnd_process.packet_index, align 4
  %56 = call i32 @rdpsnd_send_completion(%struct.TYPE_18__* %53, i64 %54, i32 %55)
  %57 = call i32 (...) @wave_out_close()
  %58 = load i8*, i8** @False, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  br label %132

62:                                               ; preds = %43
  %63 = load i8*, i8** @True, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  store i8* %63, i8** %66, align 8
  %67 = load i64, i64* @rdpsnd_process.format, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  br label %71

71:                                               ; preds = %62, %22
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = load i64, i64* @rdpsnd_process.tick, align 8
  %74 = load i32, i32* @rdpsnd_process.packet_index, align 4
  %75 = call i32 @wave_out_write(%struct.TYPE_17__* %72, i64 %73, i32 %74)
  %76 = load i8*, i8** @False, align 8
  store i8* %76, i8** @rdpsnd_process.awaiting_data_packet, align 8
  br label %132

77:                                               ; preds = %2
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @in_uint8(%struct.TYPE_17__* %78, i32 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = call i32 @in_uint8s(%struct.TYPE_17__* %81, i32 1)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @in_uint16_le(%struct.TYPE_17__* %83, i64 %84)
  %86 = load i32, i32* %5, align 4
  switch i32 %86, label %129 [
    i32 128, label %87
    i32 132, label %98
    i32 131, label %104
    i32 130, label %108
    i32 129, label %112
  ]

87:                                               ; preds = %77
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %89 = load i64, i64* @rdpsnd_process.tick, align 8
  %90 = call i32 @in_uint16_le(%struct.TYPE_17__* %88, i64 %89)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = load i64, i64* @rdpsnd_process.format, align 8
  %93 = call i32 @in_uint16_le(%struct.TYPE_17__* %91, i64 %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = load i32, i32* @rdpsnd_process.packet_index, align 4
  %96 = call i32 @in_uint8(%struct.TYPE_17__* %94, i32 %95)
  %97 = load i8*, i8** @True, align 8
  store i8* %97, i8** @rdpsnd_process.awaiting_data_packet, align 8
  br label %132

98:                                               ; preds = %77
  %99 = call i32 (...) @wave_out_close()
  %100 = load i8*, i8** @False, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  store i8* %100, i8** %103, align 8
  br label %132

104:                                              ; preds = %77
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = call i32 @rdpsnd_process_negotiate(%struct.TYPE_18__* %105, %struct.TYPE_17__* %106)
  br label %132

108:                                              ; preds = %77
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %111 = call i32 @rdpsnd_process_servertick(%struct.TYPE_18__* %109, %struct.TYPE_17__* %110)
  br label %132

112:                                              ; preds = %77
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @in_uint32(%struct.TYPE_17__* %113, i32 %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %112
  %122 = load i32, i32* %7, align 4
  %123 = and i32 %122, 65535
  %124 = load i32, i32* %7, align 4
  %125 = and i32 %124, -65536
  %126 = lshr i32 %125, 16
  %127 = call i32 @wave_out_volume(i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %121, %112
  br label %132

129:                                              ; preds = %77
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @unimpl(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %14, %38, %52, %71, %129, %128, %108, %104, %98, %87
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @wave_out_open(...) #1

declare dso_local i32 @rdpsnd_send_completion(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i32 @wave_out_set_format(i32*) #1

declare dso_local i32 @wave_out_close(...) #1

declare dso_local i32 @wave_out_write(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @in_uint8(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @in_uint8s(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @in_uint16_le(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @rdpsnd_process_negotiate(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @rdpsnd_process_servertick(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @in_uint32(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @wave_out_volume(i32, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
