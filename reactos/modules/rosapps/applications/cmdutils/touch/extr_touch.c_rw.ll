; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/touch/extr_touch.c_rw.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/touch/extr_touch.c_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: file modified\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: permissions modified\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rw(i8* %0, %struct.stat* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.stat* %1, %struct.stat** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.stat*, %struct.stat** %6, align 8
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @S_ISREG(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = load %struct.stat*, %struct.stat** %6, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @S_ISDIR(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strerror(i32 0)
  %26 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  store i32 1, i32* %4, align 4
  br label %118

27:                                               ; preds = %17, %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @O_RDWR, align 4
  %30 = call i32 @_open(i8* %28, i32 %29, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @DEFFILEMODE, align 4
  %38 = call i64 @_chmod(i8* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %32
  br label %78

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* @O_RDWR, align 4
  %44 = call i32 @_open(i8* %42, i32 %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %78

47:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.stat*, %struct.stat** %6, align 8
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @_read(i32 %54, i32* %11, i32 4)
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 4
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %78

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @SEEK_SET, align 4
  %62 = call i32 @_lseek(i32 %60, i32 0, i32 %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %78

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @_write(i32 %66, i32* %11, i32 4)
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 4
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %78

71:                                               ; preds = %65
  br label %90

72:                                               ; preds = %48
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @_write(i32 %73, i32* %11, i32 4)
  %75 = sext i32 %74 to i64
  %76 = icmp ne i64 %75, 4
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %70, %64, %58, %46, %40
  store i32 1, i32* %10, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  br label %89

81:                                               ; preds = %72
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @_chsize(i32 %82, i32 0)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  store i32 1, i32* %10, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %81
  br label %89

89:                                               ; preds = %88, %78
  br label %90

90:                                               ; preds = %89, %71
  %91 = load i32, i32* %8, align 4
  %92 = call i64 @_close(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  store i32 1, i32* %10, align 4
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %97, %94, %90
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.stat*, %struct.stat** %6, align 8
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @_chmod(i8* %104, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  store i32 1, i32* %10, align 4
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %113, %110, %103, %100
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %23
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @warnx(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @_open(i8*, i32, i32) #1

declare dso_local i64 @_chmod(i8*, i32) #1

declare dso_local i32 @_read(i32, i32*, i32) #1

declare dso_local i32 @_lseek(i32, i32, i32) #1

declare dso_local i32 @_write(i32, i32*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @_chsize(i32, i32) #1

declare dso_local i64 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
