; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_lirc.c_Process.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_lirc.c_Process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"key-\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"key-action\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown hotkey '%s'\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"this doesn't appear to be a valid keycombo lirc sent us. Please look at the doc/lirc/example.lirc file in VLC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @Process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Process(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  br label %6

6:                                                ; preds = %52, %1
  %7 = call i64 @lirc_nextcode(i8** %3)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %55

10:                                               ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %55

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %51, %14
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @lirc_code2char(i32 %20, i8* %21, i8** %4)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br label %27

27:                                               ; preds = %24, %15
  %28 = phi i1 [ false, %15 ], [ %26, %24 ]
  br i1 %28, label %29, label %52

29:                                               ; preds = %27
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %30, i32 4)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @vlc_actions_get_id(i8* %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = call i32 @vlc_object_instance(%struct.TYPE_7__* %39)
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @var_SetInteger(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %47

43:                                               ; preds = %33
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %43, %38
  br label %51

48:                                               ; preds = %29
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %49, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0))
  br label %52

51:                                               ; preds = %47
  br label %15

52:                                               ; preds = %48, %27
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @free(i8* %53)
  br label %6

55:                                               ; preds = %13, %9
  ret void
}

declare dso_local i64 @lirc_nextcode(i8**) #1

declare dso_local i64 @lirc_code2char(i32, i8*, i8**) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @vlc_actions_get_id(i8*) #1

declare dso_local i32 @var_SetInteger(i32, i8*, i64) #1

declare dso_local i32 @vlc_object_instance(%struct.TYPE_7__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
