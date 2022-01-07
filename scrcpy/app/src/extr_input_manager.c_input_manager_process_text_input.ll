; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_input_manager_process_text_input.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_input_manager_process_text_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_manager = type { i32 }
%struct.TYPE_5__ = type { i8* }
%struct.control_msg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@CONTROL_MSG_TYPE_INJECT_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not strdup input text\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not request 'inject text'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_manager_process_text_input(%struct.input_manager* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.input_manager*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.control_msg, align 4
  store %struct.input_manager* %0, %struct.input_manager** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %5, align 1
  %12 = load i8, i8* %5, align 1
  %13 = call i64 @isalpha(i8 signext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i8, i8* %5, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %29

19:                                               ; preds = %15, %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @SDL_assert(i32 %27)
  br label %56

29:                                               ; preds = %15
  %30 = load i32, i32* @CONTROL_MSG_TYPE_INJECT_TEXT, align 4
  %31 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @SDL_strdup(i8* %34)
  %36 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %6, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %29
  %43 = call i32 @LOGW(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %56

44:                                               ; preds = %29
  %45 = load %struct.input_manager*, %struct.input_manager** %3, align 8
  %46 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @controller_push_msg(i32 %47, %struct.control_msg* %6)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.control_msg, %struct.control_msg* %6, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SDL_free(i32 %53)
  %55 = call i32 @LOGW(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %19, %42, %50, %44
  ret void
}

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @SDL_assert(i32) #1

declare dso_local i32 @SDL_strdup(i8*) #1

declare dso_local i32 @LOGW(i8*) #1

declare dso_local i32 @controller_push_msg(i32, %struct.control_msg*) #1

declare dso_local i32 @SDL_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
