; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_xattr-util.c_fd_getcrtime_at.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_xattr-util.c_fd_getcrtime_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@AT_EMPTY_PATH = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AT_STATX_DONT_SYNC = common dso_local global i32 0, align 4
@STATX_BTIME = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@USEC_INFINITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"user.crtime_usec\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fd_getcrtime_at(i32 %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @assert(i32* %16)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @AT_EMPTY_PATH, align 4
  %20 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %107

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strempty(i8* %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @AT_STATX_DONT_SYNC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @STATX_BTIME, align 4
  %36 = call i64 @statx(i32 %29, i32 %31, i32 %34, i32 %35, %struct.TYPE_5__* %10)
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @STATX_BTIME, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @USEC_PER_SEC, align 4
  %55 = mul nsw i32 %53, %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @NSEC_PER_USEC, align 4
  %61 = sdiv i32 %59, %60
  %62 = add nsw i32 %55, %61
  store i32 %62, i32* %11, align 4
  br label %65

63:                                               ; preds = %44, %38, %28
  %64 = load i32, i32* @USEC_INFINITY, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %49
  %66 = load i32, i32* %6, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @fgetxattrat_fake(i32 %66, i8* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %13, i32 4, i32 %68, i64* %14)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load i64, i64* %14, align 8
  %74 = icmp ne i64 %73, 4
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %15, align 4
  br label %81

78:                                               ; preds = %72
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @parse_crtime(i32 %79, i32* %12)
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %65
  %83 = load i32, i32* %15, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @USEC_INFINITY, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** %8, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %5, align 4
  br label %107

92:                                               ; preds = %85
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %5, align 4
  br label %107

94:                                               ; preds = %82
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @USEC_INFINITY, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @MIN(i32 %99, i32 %100)
  %102 = load i32*, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  br label %106

103:                                              ; preds = %94
  %104 = load i32, i32* %12, align 4
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %98
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %92, %89, %25
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @statx(i32, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @strempty(i8*) #1

declare dso_local i32 @fgetxattrat_fake(i32, i8*, i8*, i32*, i32, i32, i64*) #1

declare dso_local i32 @parse_crtime(i32, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
