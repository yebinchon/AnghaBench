; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_vlc_readdir_helper_init.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_vlc_readdir_helper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_readdir_helper = type { i32, i32, i32, i32, i8*, i32, i32, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"show-hiddenfiles\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ignore-filetypes\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"sub-autodetect-file\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"sub-autodetect-fuzzy\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"extractor-flatten\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_readdir_helper_init(%struct.vlc_readdir_helper* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca %struct.vlc_readdir_helper*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.vlc_readdir_helper* %0, %struct.vlc_readdir_helper** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32* @vlc_object_create(i32* %9, i32 4)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @input_item_ApplyOptions(i32* %14, i32 %17)
  %19 = load i32*, i32** %7, align 8
  store i32* %19, i32** %5, align 8
  br label %20

20:                                               ; preds = %13, %3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %4, align 8
  %23 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %22, i32 0, i32 8
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %23, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i8* @var_InheritBool(i32* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %4, align 8
  %27 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @var_InheritString(i32* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %4, align 8
  %31 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i8* @var_InheritBool(i32* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %20
  br label %41

38:                                               ; preds = %20
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @var_InheritInteger(i32* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 0, %37 ], [ %40, %38 ]
  %43 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %4, align 8
  %44 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i8* @var_InheritBool(i32* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %47 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %4, align 8
  %48 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %4, align 8
  %50 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %4, align 8
  %53 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @TAB_INIT(i32 %51, i32 %54)
  %56 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %4, align 8
  %57 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %4, align 8
  %60 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @TAB_INIT(i32 %58, i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %41
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @vlc_object_delete(i32* %66)
  br label %68

68:                                               ; preds = %65, %41
  ret void
}

declare dso_local i32* @vlc_object_create(i32*, i32) #1

declare dso_local i32 @input_item_ApplyOptions(i32*, i32) #1

declare dso_local i8* @var_InheritBool(i32*, i8*) #1

declare dso_local i32 @var_InheritString(i32*, i8*) #1

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @TAB_INIT(i32, i32) #1

declare dso_local i32 @vlc_object_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
