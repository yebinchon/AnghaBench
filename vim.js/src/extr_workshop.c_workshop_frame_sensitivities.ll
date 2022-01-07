; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_workshop.c_workshop_frame_sensitivities.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_workshop.c_workshop_frame_sensitivities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"amenu\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WS_TRACE = common dso_local global i32 0, align 4
@WS_TRACE_VERBOSE = common dso_local global i32 0, align 4
@ws_debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workshop_frame_sensitivities(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4096 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %3, align 8
  br label %9

9:                                                ; preds = %49, %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %16 = call i32 @strcpy(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %18 = call i32 @strcat(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %26 = call i32 @strcat(i8* %19, i8* %25)
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %28 = call i32 @strcat(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %39, %14
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  %37 = call i8* @lookupVerb(i32* %34, i32 %35)
  store i8* %37, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 %41
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strcpy(i8* %42, i8* %43)
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @coloncmd(i8* %45, i32 %46)
  br label %31

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 1
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %3, align 8
  br label %9

52:                                               ; preds = %9
  %53 = call i32 @gui_update_menus(i32 0)
  %54 = call i32 (...) @gui_mch_flush()
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @lookupVerb(i32*, i32) #1

declare dso_local i32 @coloncmd(i8*, i32) #1

declare dso_local i32 @gui_update_menus(i32) #1

declare dso_local i32 @gui_mch_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
