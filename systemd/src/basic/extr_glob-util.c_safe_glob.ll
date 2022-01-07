; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_glob-util.c_safe_glob.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_glob-util.c_safe_glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.dirent* (i8*)*, i8* (i8*)*, i32, i64, i64, i64 }
%struct.dirent = type opaque

@GLOB_ALTDIRFUNC = common dso_local global i32 0, align 4
@closedir_wrapper = common dso_local global i64 0, align 8
@readdir_no_dot = common dso_local global i64 0, align 8
@opendir = common dso_local global i64 0, align 8
@lstat = common dso_local global i64 0, align 8
@stat = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@GLOB_NOMATCH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GLOB_NOSPACE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @safe_glob(i8* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @GLOB_ALTDIRFUNC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* @closedir_wrapper, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.dirent* (i8*)*, %struct.dirent* (i8*)** %26, align 8
  %28 = icmp ne %struct.dirent* (i8*)* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* @readdir_no_dot, align 8
  %31 = inttoptr i64 %30 to %struct.dirent* (i8*)*
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.dirent* (i8*)* %31, %struct.dirent* (i8*)** %33, align 8
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i8* (i8*)*, i8* (i8*)** %36, align 8
  %38 = icmp ne i8* (i8*)* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* @opendir, align 8
  %41 = inttoptr i64 %40 to i8* (i8*)*
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i8* (i8*)* %41, i8* (i8*)** %43, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* @lstat, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* @stat, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %53
  store i64 0, i64* @errno, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @GLOB_ALTDIRFUNC, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = call i32 @glob(i8* %63, i32 %66, i32* null, %struct.TYPE_4__* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @GLOB_NOMATCH, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %98

75:                                               ; preds = %62
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @GLOB_NOSPACE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %98

82:                                               ; preds = %75
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @EIO, align 4
  %87 = call i32 @errno_or_else(i32 %86)
  store i32 %87, i32* %4, align 4
  br label %98

88:                                               ; preds = %82
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @strv_isempty(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @ENOENT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %98

97:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %94, %85, %79, %72
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @glob(i8*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @errno_or_else(i32) #1

declare dso_local i64 @strv_isempty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
