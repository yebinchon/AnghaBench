; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showwal.c_describeCell.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showwal.c_describeCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@describeCell.zDesc = internal global [1000 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"lx: %d \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"n: %lld \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"r: %lld \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ov: %d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8, i8*, i32, i8**)* @describeCell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @describeCell(i8 zeroext %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sle i32 %19, 5
  br i1 %20, label %21, label %51

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = mul nsw i32 %25, 256
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %26, %30
  %32 = mul nsw i32 %31, 256
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 %32, %36
  %38 = mul nsw i32 %37, 256
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %38, %42
  store i32 %43, i32* %12, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %45, i8** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @sprintf(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @describeCell.zDesc, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = call i64 @strlen(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @describeCell.zDesc, i64 0, i64 0))
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %21, %4
  %52 = load i8, i8* %5, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %53, 5
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @decodeVarint(i8* %56, i64* %13)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds [1000 x i8], [1000 x i8]* @describeCell.zDesc, i64 0, i64 %65
  %67 = load i64, i64* %13, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds [1000 x i8], [1000 x i8]* @describeCell.zDesc, i64 0, i64 %70
  %72 = call i64 @strlen(i8* %71)
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i8, i8* %5, align 1
  %77 = call i64 @localPayload(i64 %75, i8 zeroext %76)
  store i64 %77, i64* %15, align 8
  br label %79

78:                                               ; preds = %51
  store i64 0, i64* %15, align 8
  store i64 0, i64* %13, align 8
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i8, i8* %5, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 5
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i8, i8* %5, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 13
  br i1 %86, label %87, label %107

87:                                               ; preds = %83, %79
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @decodeVarint(i8* %88, i64* %14)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %6, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %11, align 4
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds [1000 x i8], [1000 x i8]* @describeCell.zDesc, i64 0, i64 %97
  %99 = load i64, i64* %14, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @sprintf(i8* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds [1000 x i8], [1000 x i8]* @describeCell.zDesc, i64 0, i64 %102
  %104 = call i64 @strlen(i8* %103)
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %10, align 8
  br label %107

107:                                              ; preds = %87, %83
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %13, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %148

111:                                              ; preds = %107
  %112 = load i8*, i8** %6, align 8
  %113 = load i64, i64* %15, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %17, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = mul nsw i32 %118, 256
  %120 = load i8*, i8** %17, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = add nsw i32 %119, %123
  %125 = mul nsw i32 %124, 256
  %126 = load i8*, i8** %17, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = add nsw i32 %125, %129
  %131 = mul nsw i32 %130, 256
  %132 = load i8*, i8** %17, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 3
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = add nsw i32 %131, %135
  store i32 %136, i32* %16, align 4
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds [1000 x i8], [1000 x i8]* @describeCell.zDesc, i64 0, i64 %137
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @sprintf(i8* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* %10, align 8
  %142 = getelementptr inbounds [1000 x i8], [1000 x i8]* @describeCell.zDesc, i64 0, i64 %141
  %143 = call i64 @strlen(i8* %142)
  %144 = load i64, i64* %10, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %10, align 8
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 4
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %111, %107
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %148
  %152 = load i8, i8* %5, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp ne i32 %153, 5
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = load i8*, i8** %6, align 8
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* %10, align 8
  %159 = sub i64 %158, 1
  %160 = getelementptr inbounds [1000 x i8], [1000 x i8]* @describeCell.zDesc, i64 0, i64 %159
  %161 = call i64 @describeContent(i8* %156, i64 %157, i8* %160)
  %162 = load i64, i64* %10, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %10, align 8
  br label %164

164:                                              ; preds = %155, %151, %148
  %165 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @describeCell.zDesc, i64 0, i64 0), i8** %165, align 8
  %166 = load i64, i64* %15, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 %166, %168
  ret i64 %169
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @decodeVarint(i8*, i64*) #1

declare dso_local i64 @localPayload(i64, i8 zeroext) #1

declare dso_local i64 @describeContent(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
