; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_fs-util.c_fchmod_and_chown.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_fs-util.c_fchmod_and_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i32 }

@errno = common dso_local global i32 0, align 4
@UID_INVALID = common dso_local global i64 0, align 8
@GID_INVALID = common dso_local global i64 0, align 8
@MODE_INVALID = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AT_EMPTY_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fchmod_and_chown(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @fstat(i32 %14, %struct.stat* %12)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @errno, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %153

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @UID_INVALID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %24, %20
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @GID_INVALID, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %35, %36
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i1 [ false, %29 ], [ %37, %33 ]
  br label %40

40:                                               ; preds = %38, %24
  %41 = phi i1 [ true, %24 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @S_ISLNK(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @MODE_INVALID, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = xor i32 %53, %54
  %56 = and i32 %55, 4095
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51, %47
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi i1 [ true, %51 ], [ %60, %58 ]
  br label %63

63:                                               ; preds = %61, %40
  %64 = phi i1 [ false, %40 ], [ %62, %61 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @MODE_INVALID, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %7, align 4
  br label %89

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @S_IFMT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = xor i32 %78, %80
  %82 = load i32, i32* @S_IFMT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %153

88:                                               ; preds = %77, %72
  br label %89

89:                                               ; preds = %88, %69
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = xor i32 %100, %102
  %104 = and i32 %103, 4095
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %95
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %13, align 4
  %109 = and i32 %108, 4095
  %110 = call i64 @fchmod_opath(i32 %107, i32 %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @errno, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %153

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %116, %92, %89
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load i32, i32* %6, align 4
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i32, i32* @AT_EMPTY_PATH, align 4
  %125 = call i64 @fchownat(i32 %121, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %122, i64 %123, i32 %124)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i32, i32* @errno, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %153

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %117
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %131
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, 4095
  %138 = call i64 @fchmod_opath(i32 %135, i32 %137)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* @errno, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %5, align 4
  br label %153

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143, %131
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br label %150

150:                                              ; preds = %147, %144
  %151 = phi i1 [ true, %144 ], [ %149, %147 ]
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %150, %140, %127, %112, %85, %17
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @fchmod_opath(i32, i32) #1

declare dso_local i64 @fchownat(i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
