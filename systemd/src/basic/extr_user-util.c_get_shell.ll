; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_user-util.c_get_shell.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_user-util.c_get_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@UID_NOBODY = common dso_local global i64 0, align 8
@NOLOGIN = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_shell(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = call i32 @assert(i8** %8)
  %10 = call i8* @secure_getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @path_is_valid(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @path_is_absolute(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %102

29:                                               ; preds = %21
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @path_simplify(i8* %30, i32 1)
  %32 = load i8**, i8*** %3, align 8
  store i8* %31, i8** %32, align 8
  store i32 0, i32* %2, align 4
  br label %102

33:                                               ; preds = %17, %13, %1
  %34 = call i64 (...) @getuid()
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %102

44:                                               ; preds = %37
  %45 = load i8*, i8** %6, align 8
  %46 = load i8**, i8*** %3, align 8
  store i8* %45, i8** %46, align 8
  store i32 0, i32* %2, align 4
  br label %102

47:                                               ; preds = %33
  %48 = call i64 (...) @synthesize_nobody()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @UID_NOBODY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i8*, i8** @NOLOGIN, align 8
  %56 = call i8* @strdup(i8* %55)
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %102

62:                                               ; preds = %54
  %63 = load i8*, i8** %6, align 8
  %64 = load i8**, i8*** %3, align 8
  store i8* %63, i8** %64, align 8
  store i32 0, i32* %2, align 4
  br label %102

65:                                               ; preds = %50, %47
  store i64 0, i64* @errno, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call %struct.passwd* @getpwuid(i64 %66)
  store %struct.passwd* %67, %struct.passwd** %4, align 8
  %68 = load %struct.passwd*, %struct.passwd** %4, align 8
  %69 = icmp ne %struct.passwd* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @ESRCH, align 4
  %72 = call i32 @errno_or_else(i32 %71)
  store i32 %72, i32* %2, align 4
  br label %102

73:                                               ; preds = %65
  %74 = load %struct.passwd*, %struct.passwd** %4, align 8
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @path_is_valid(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.passwd*, %struct.passwd** %4, align 8
  %81 = getelementptr inbounds %struct.passwd, %struct.passwd* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @path_is_absolute(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79, %73
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %102

88:                                               ; preds = %79
  %89 = load %struct.passwd*, %struct.passwd** %4, align 8
  %90 = getelementptr inbounds %struct.passwd, %struct.passwd* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @strdup(i8* %91)
  store i8* %92, i8** %6, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %102

98:                                               ; preds = %88
  %99 = load i8*, i8** %6, align 8
  %100 = call i8* @path_simplify(i8* %99, i32 1)
  %101 = load i8**, i8*** %3, align 8
  store i8* %100, i8** %101, align 8
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %95, %85, %70, %62, %59, %44, %41, %29, %26
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i8* @secure_getenv(i8*) #1

declare dso_local i64 @path_is_valid(i8*) #1

declare dso_local i64 @path_is_absolute(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @path_simplify(i8*, i32) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @synthesize_nobody(...) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local i32 @errno_or_else(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
