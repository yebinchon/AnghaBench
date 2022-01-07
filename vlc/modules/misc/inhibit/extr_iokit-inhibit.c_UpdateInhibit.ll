; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/inhibit/extr_iokit-inhibit.c_UpdateInhibit.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/inhibit/extr_iokit-inhibit.c_UpdateInhibit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }

@kIOPMNullAssertionID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Releasing previous IOPMAssertion\00", align 1
@kIOReturnSuccess = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Failed releasing previous IOPMAssertion, not acquiring new one!\00", align 1
@VLC_INHIBIT_DISPLAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"VLC video playback\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Inhibiting display sleep\00", align 1
@kIOPMUserActiveLocal = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to declare user activity (%i)\00", align 1
@kIOPMAssertPreventUserIdleDisplaySleep = common dso_local global i32 0, align 4
@kIOPMAssertionLevelOn = common dso_local global i32 0, align 4
@VLC_INHIBIT_SUSPEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"VLC audio playback\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Inhibiting idle sleep\00", align 1
@kIOPMAssertPreventUserIdleSystemSleep = common dso_local global i32 0, align 4
@VLC_INHIBIT_NONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Removed previous inhibition\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Unhandled inhibiton mask (%i)\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed creating IOPMAssertion (%i)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @UpdateInhibit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateInhibit(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @kIOPMNullAssertionID, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = call i32 @msg_Dbg(%struct.TYPE_7__* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @IOPMAssertionRelease(i64 %22)
  %24 = load i64, i64* @kIOReturnSuccess, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %27, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %17
  %30 = load i64, i64* @kIOPMNullAssertionID, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @VLC_INHIBIT_DISPLAY, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @VLC_INHIBIT_DISPLAY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = call i32 @CFSTR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = call i32 @msg_Dbg(%struct.TYPE_7__* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @kIOPMUserActiveLocal, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = call i64 @IOPMAssertionDeclareUserActivity(i32 %43, i32 %44, i32* %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @kIOReturnSuccess, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @msg_Warn(%struct.TYPE_7__* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %39
  %57 = load i32, i32* @kIOPMAssertPreventUserIdleDisplaySleep, align 4
  %58 = load i32, i32* @kIOPMAssertionLevelOn, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i64 @IOPMAssertionCreateWithName(i32 %57, i32 %58, i32 %59, i64* %61)
  store i64 %62, i64* %6, align 8
  br label %93

63:                                               ; preds = %33
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @VLC_INHIBIT_SUSPEND, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @VLC_INHIBIT_SUSPEND, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = call i32 @CFSTR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 %70, i32* %8, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = call i32 @msg_Dbg(%struct.TYPE_7__* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* @kIOPMAssertPreventUserIdleSystemSleep, align 4
  %74 = load i32, i32* @kIOPMAssertionLevelOn, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = call i64 @IOPMAssertionCreateWithName(i32 %73, i32 %74, i32 %75, i64* %77)
  store i64 %78, i64* %6, align 8
  br label %92

79:                                               ; preds = %63
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @VLC_INHIBIT_NONE, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @VLC_INHIBIT_NONE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = call i32 @msg_Dbg(%struct.TYPE_7__* %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %101

88:                                               ; preds = %79
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @msg_Warn(%struct.TYPE_7__* %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  br label %101

92:                                               ; preds = %69
  br label %93

93:                                               ; preds = %92, %56
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @kIOReturnSuccess, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %85, %88, %97, %93
  ret void
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @IOPMAssertionRelease(i64) #1

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @CFSTR(i8*) #1

declare dso_local i64 @IOPMAssertionDeclareUserActivity(i32, i32, i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i64 @IOPMAssertionCreateWithName(i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
