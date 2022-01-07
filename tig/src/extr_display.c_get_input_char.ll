; ModuleID = '/home/carl/AnghaBench/tig/src/extr_display.c_get_input_char.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_display.c_get_input_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@get_input_char.key = internal global %struct.key zeroinitializer, align 8
@get_input_char.bytes_pos = internal global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Only ASCII control characters can be used in prompts: %d\00", align 1
@opt_tty = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_input_char() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @is_script_executing()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %35

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.key, %struct.key* @get_input_char.key, i32 0, i32 1, i32 0), align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i32, i32* @get_input_char.bytes_pos, align 4
  %9 = load i32*, i32** getelementptr inbounds (%struct.key, %struct.key* @get_input_char.key, i32 0, i32 0, i32 0), align 8
  %10 = call i32 @strlen(i32* %9)
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %7, %4
  %13 = call i32 @read_script(%struct.key* @get_input_char.key)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %38

16:                                               ; preds = %12
  store i32 0, i32* @get_input_char.bytes_pos, align 4
  br label %17

17:                                               ; preds = %16, %7
  %18 = load i32, i32* getelementptr inbounds (%struct.key, %struct.key* @get_input_char.key, i32 0, i32 1, i32 0), align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* getelementptr inbounds (%struct.key, %struct.key* @get_input_char.key, i32 0, i32 0, i32 1), align 8
  %22 = icmp slt i32 %21, 128
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.key, %struct.key* @get_input_char.key, i32 0, i32 0, i32 1), align 8
  store i32 %24, i32* %1, align 4
  br label %38

25:                                               ; preds = %20
  %26 = load i32, i32* getelementptr inbounds (%struct.key, %struct.key* @get_input_char.key, i32 0, i32 0, i32 1), align 8
  %27 = call i32 @die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %17
  %29 = load i32*, i32** getelementptr inbounds (%struct.key, %struct.key* @get_input_char.key, i32 0, i32 0, i32 0), align 8
  %30 = load i32, i32* @get_input_char.bytes_pos, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @get_input_char.bytes_pos, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %1, align 4
  br label %38

35:                                               ; preds = %0
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @opt_tty, i32 0, i32 0), align 4
  %37 = call i32 @getc(i32 %36)
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %35, %28, %23, %15
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i64 @is_script_executing(...) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @read_script(%struct.key*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @getc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
