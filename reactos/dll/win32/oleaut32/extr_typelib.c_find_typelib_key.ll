; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_find_typelib_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_find_typelib_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@find_typelib_key.typelibW = internal constant [9 x i8] c"Typelib\\\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%x.%x\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"found %s: %x.%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"found best_maj %d, best_min %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @find_typelib_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_typelib_key(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [60 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 -1, i64* %12, align 8
  store i64 -1, i64* %13, align 8
  %17 = getelementptr inbounds [60 x i8], [60 x i8]* %8, i64 0, i64 0
  %18 = call i32 @memcpy(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @find_typelib_key.typelibW, i64 0, i64 0), i32 9)
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds [60 x i8], [60 x i8]* %8, i64 0, i64 0
  %21 = getelementptr inbounds [60 x i8], [60 x i8]* %8, i64 0, i64 0
  %22 = call i32 @strlenW(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = call i32 @StringFromGUID2(i32 %19, i8* %24, i32 40)
  %26 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %27 = getelementptr inbounds [60 x i8], [60 x i8]* %8, i64 0, i64 0
  %28 = load i32, i32* @KEY_READ, align 4
  %29 = call i64 @RegOpenKeyExW(i32 %26, i8* %27, i32 0, i32 %28, i32* %14)
  %30 = load i64, i64* @ERROR_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %4, align 4
  br label %147

34:                                               ; preds = %3
  store i32 16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %102, %34
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %40 = call i64 @RegEnumKeyExA(i32 %36, i32 %37, i8* %39, i32* %10, i32* null, i32* null, i32* null, i32* null)
  %41 = load i64, i64* @ERROR_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %103

43:                                               ; preds = %35
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %45 = call i32 @sscanf(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %15, i64* %16)
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %102

47:                                               ; preds = %43
  %48 = getelementptr inbounds [60 x i8], [60 x i8]* %8, i64 0, i64 0
  %49 = call i32 @debugstr_w(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %16, align 8
  %53 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %51, i64 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 65535
  br i1 %56, label %57, label %74

57:                                               ; preds = %47
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 65535
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* %15, align 8
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* %16, align 8
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %71, %67
  br label %101

74:                                               ; preds = %57, %47
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %15, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %74
  %81 = load i64, i64* %15, align 8
  store i64 %81, i64* %12, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %16, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i64, i64* %16, align 8
  store i64 %88, i64* %13, align 8
  br label %103

89:                                               ; preds = %80
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 65535
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* %13, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i64, i64* %16, align 8
  store i64 %98, i64* %13, align 8
  br label %99

99:                                               ; preds = %97, %93, %89
  br label %100

100:                                              ; preds = %99, %74
  br label %101

101:                                              ; preds = %100, %73
  br label %102

102:                                              ; preds = %101, %43
  store i32 16, i32* %10, align 4
  br label %35

103:                                              ; preds = %87, %35
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @RegCloseKey(i32 %104)
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %106, i64 %107)
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 65535
  br i1 %111, label %112, label %131

112:                                              ; preds = %103
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 65535
  br i1 %115, label %116, label %131

116:                                              ; preds = %112
  %117 = load i64, i64* %12, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load i64, i64* %13, align 8
  %121 = icmp sge i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load i64, i64* %12, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32*, i32** %6, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i64, i64* %13, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %4, align 4
  br label %147

130:                                              ; preds = %119, %116
  br label %131

131:                                              ; preds = %130, %112, %103
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %12, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %131
  %138 = load i64, i64* %13, align 8
  %139 = icmp sge i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i64, i64* %13, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i32*, i32** %7, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* @TRUE, align 4
  store i32 %144, i32* %4, align 4
  br label %147

145:                                              ; preds = %137, %131
  %146 = load i32, i32* @FALSE, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %140, %122, %32
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @StringFromGUID2(i32, i8*, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegEnumKeyExA(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

declare dso_local i32 @TRACE(i8*, i64, i64, ...) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
