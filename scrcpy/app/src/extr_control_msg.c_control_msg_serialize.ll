; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_control_msg.c_control_msg_serialize.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_control_msg.c_control_msg_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.control_msg = type { i8, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i8 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i8, i32, i32 }
%struct.TYPE_6__ = type { i8, i32, i32 }

@CONTROL_MSG_TEXT_MAX_LENGTH = common dso_local global i32 0, align 4
@CONTROL_MSG_CLIPBOARD_TEXT_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown message type: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @control_msg_serialize(%struct.control_msg* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.control_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.control_msg* %0, %struct.control_msg** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %9 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 %10, i8* %12, align 1
  %13 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %14 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 4
  %16 = zext i8 %15 to i32
  switch i32 %16, label %109 [
    i32 133, label %17
    i32 130, label %38
    i32 132, label %49
    i32 131, label %69
    i32 129, label %90
    i32 128, label %101
    i32 137, label %108
    i32 135, label %108
    i32 136, label %108
    i32 134, label %108
  ]

17:                                               ; preds = %2
  %18 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %19 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 %21, i8* %23, align 1
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %27 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @buffer_write32be(i8* %25, i32 %29)
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 6
  %33 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %34 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @buffer_write32be(i8* %32, i32 %36)
  store i64 10, i64* %3, align 8
  br label %115

38:                                               ; preds = %2
  %39 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %40 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CONTROL_MSG_TEXT_MAX_LENGTH, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i64 @write_string(i32 %42, i32 %43, i8* %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add i64 1, %47
  store i64 %48, i64* %3, align 8
  br label %115

49:                                               ; preds = %2
  %50 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %51 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8 %53, i8* %55, align 1
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %59 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @buffer_write32be(i8* %57, i32 %61)
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 6
  %65 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %66 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = call i32 @write_position(i8* %64, i32* %67)
  store i64 18, i64* %3, align 8
  br label %115

69:                                               ; preds = %2
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %73 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = call i32 @write_position(i8* %71, i32* %74)
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 13
  %78 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %79 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @buffer_write32be(i8* %77, i32 %81)
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 17
  %85 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %86 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @buffer_write32be(i8* %84, i32 %88)
  store i64 21, i64* %3, align 8
  br label %115

90:                                               ; preds = %2
  %91 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %92 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CONTROL_MSG_CLIPBOARD_TEXT_MAX_LENGTH, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = call i64 @write_string(i32 %94, i32 %95, i8* %97)
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = add i64 1, %99
  store i64 %100, i64* %3, align 8
  br label %115

101:                                              ; preds = %2
  %102 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %103 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i8, i8* %104, align 1
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  store i8 %105, i8* %107, align 1
  store i64 2, i64* %3, align 8
  br label %115

108:                                              ; preds = %2, %2, %2, %2
  store i64 1, i64* %3, align 8
  br label %115

109:                                              ; preds = %2
  %110 = load %struct.control_msg*, %struct.control_msg** %4, align 8
  %111 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %110, i32 0, i32 0
  %112 = load i8, i8* %111, align 4
  %113 = zext i8 %112 to i32
  %114 = call i32 @LOGW(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %113)
  store i64 0, i64* %3, align 8
  br label %115

115:                                              ; preds = %109, %108, %101, %90, %69, %49, %38, %17
  %116 = load i64, i64* %3, align 8
  ret i64 %116
}

declare dso_local i32 @buffer_write32be(i8*, i32) #1

declare dso_local i64 @write_string(i32, i32, i8*) #1

declare dso_local i32 @write_position(i8*, i32*) #1

declare dso_local i32 @LOGW(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
