; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_var_Inherit.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_var_Inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@VLC_VAR_CLASS = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VLC_ENOOBJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @var_Inherit(i32* %0, i8* %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  %11 = load i32, i32* @VLC_VAR_CLASS, align 4
  %12 = load i32, i32* %8, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %10, align 8
  br label %15

15:                                               ; preds = %30, %4
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load i32*, i32** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = call i64 @var_GetChecked(i32* %19, i8* %20, i32 %21, %struct.TYPE_4__* %22)
  %24 = load i64, i64* @VLC_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i64, i64* @VLC_SUCCESS, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %75

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i32*, i32** %10, align 8
  %32 = call i32* @vlc_object_parent(i32* %31)
  store i32* %32, i32** %10, align 8
  br label %15

33:                                               ; preds = %15
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @VLC_VAR_CLASS, align 4
  %36 = and i32 %34, %35
  switch i32 %36, label %68 [
    i32 128, label %37
    i32 130, label %51
    i32 129, label %56
    i32 131, label %61
    i32 132, label %70
  ]

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @config_GetPsz(i8* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %37
  %47 = call i32 @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %37
  br label %72

51:                                               ; preds = %33
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @config_GetFloat(i8* %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %72

56:                                               ; preds = %33
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @config_GetInt(i8* %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %72

61:                                               ; preds = %33
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @config_GetInt(i8* %62)
  %64 = icmp sgt i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %72

68:                                               ; preds = %33
  %69 = call i32 (...) @vlc_assert_unreachable()
  br label %70

70:                                               ; preds = %33, %68
  %71 = load i32, i32* @VLC_ENOOBJ, align 4
  store i32 %71, i32* %5, align 4
  br label %75

72:                                               ; preds = %61, %56, %51, %50
  %73 = load i64, i64* @VLC_SUCCESS, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %70, %26
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @var_GetChecked(i32*, i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32* @vlc_object_parent(i32*) #1

declare dso_local i32 @config_GetPsz(i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @config_GetFloat(i8*) #1

declare dso_local i32 @config_GetInt(i8*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
