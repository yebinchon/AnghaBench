; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_strxfrm.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_strxfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p__atodbl_l = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"src\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"ret = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"dest[0] = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"dest = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"dest[1] = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LC_ALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"polish\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"stxfrm tests\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"dest[0] = 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_strxfrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_strxfrm() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i64, align 8
  %3 = load i64, i64* @p__atodbl_l, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %0
  store i32 -559038737, i32* @errno, align 4
  %6 = call i64 @strxfrm(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @INT_MAX, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %2, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @errno, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  store i32 -559038737, i32* @errno, align 4
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %21 = call i64 @strxfrm(i8* %20, i8* null, i32 100)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @INT_MAX, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %2, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @errno, align 4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %5, %0
  %36 = call i64 @strxfrm(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  store i64 %36, i64* %2, align 8
  %37 = load i64, i64* %2, align 8
  %38 = icmp eq i64 %37, 3
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %2, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  store i8 97, i8* %43, align 16
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %45 = call i64 @strxfrm(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  store i64 %45, i64* %2, align 8
  %46 = load i64, i64* %2, align 8
  %47 = icmp eq i64 %46, 3
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %2, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %53 = load i8, i8* %52, align 16
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 97
  %56 = zext i1 %55 to i32
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %58 = load i8, i8* %57, align 16
  %59 = sext i8 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 3
  store i8 97, i8* %61, align 1
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %63 = call i64 @strxfrm(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 5)
  store i64 %63, i64* %2, align 8
  %64 = load i64, i64* %2, align 8
  %65 = icmp eq i64 %64, 3
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %2, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  store i32 -559038737, i32* @errno, align 4
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 1
  store i8 97, i8* %77, align 1
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %79 = call i64 @strxfrm(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1)
  store i64 %79, i64* %2, align 8
  %80 = load i64, i64* %2, align 8
  %81 = icmp eq i64 %80, 3
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %2, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %87 = load i8, i8* %86, align 16
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 115
  %90 = zext i1 %89 to i32
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %92 = load i8, i8* %91, align 16
  %93 = sext i8 %92 to i32
  %94 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 97
  %99 = zext i1 %98 to i32
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @errno, align 4
  %105 = icmp eq i32 %104, -559038737
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* @errno, align 4
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %110 = call i64 @strxfrm(i8* %109, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 5)
  store i64 %110, i64* %2, align 8
  %111 = load i64, i64* %2, align 8
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = load i64, i64* %2, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %118 = load i8, i8* %117, align 16
  %119 = icmp ne i8 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %123 = load i8, i8* %122, align 16
  %124 = sext i8 %123 to i32
  %125 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @LC_ALL, align 4
  %127 = call i32 @setlocale(i32 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %35
  %130 = call i32 @win_skip(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %211

131:                                              ; preds = %35
  %132 = call i64 @strxfrm(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  store i64 %132, i64* %2, align 8
  %133 = load i64, i64* %2, align 8
  %134 = icmp ult i64 %133, 255
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %2, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  store i8 97, i8* %139, align 16
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %141 = call i64 @strxfrm(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  store i64 %141, i64* %2, align 8
  %142 = load i64, i64* %2, align 8
  %143 = icmp ult i64 %142, 255
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %2, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %149 = load i8, i8* %148, align 16
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 97
  %152 = zext i1 %151 to i32
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %154 = load i8, i8* %153, align 16
  %155 = sext i8 %154 to i32
  %156 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  %157 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %158 = load i64, i64* %2, align 8
  %159 = add i64 %158, 1
  %160 = trunc i64 %159 to i32
  %161 = call i64 @strxfrm(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %160)
  store i64 %161, i64* %2, align 8
  %162 = load i64, i64* %2, align 8
  %163 = icmp ult i64 %162, 255
  %164 = zext i1 %163 to i32
  %165 = load i64, i64* %2, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  %168 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %169 = load i8, i8* %168, align 16
  %170 = sext i8 %169 to i32
  %171 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i32 -559038737, i32* @errno, align 4
  %172 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  store i8 97, i8* %172, align 16
  %173 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %174 = call i64 @strxfrm(i8* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 5)
  store i64 %174, i64* %2, align 8
  %175 = load i64, i64* %2, align 8
  %176 = icmp ugt i64 %175, 5
  br i1 %176, label %177, label %180

177:                                              ; preds = %131
  %178 = load i64, i64* %2, align 8
  %179 = icmp ult i64 %178, 255
  br label %180

180:                                              ; preds = %177, %131
  %181 = phi i1 [ false, %131 ], [ %179, %177 ]
  %182 = zext i1 %181 to i32
  %183 = load i64, i64* %2, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %184)
  %186 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %187 = load i8, i8* %186, align 16
  %188 = icmp ne i8 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %180
  %190 = load i64, i64* @p__atodbl_l, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %194 = load i8, i8* %193, align 16
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 97
  br label %197

197:                                              ; preds = %192, %189
  %198 = phi i1 [ false, %189 ], [ %196, %192 ]
  %199 = zext i1 %198 to i32
  %200 = call i64 @broken(i32 %199)
  %201 = icmp ne i64 %200, 0
  br label %202

202:                                              ; preds = %197, %180
  %203 = phi i1 [ true, %180 ], [ %201, %197 ]
  %204 = zext i1 %203 to i32
  %205 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %206 = load i8, i8* %205, align 16
  %207 = sext i8 %206 to i32
  %208 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* @LC_ALL, align 4
  %210 = call i32 @setlocale(i32 %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %211

211:                                              ; preds = %202, %129
  ret void
}

declare dso_local i64 @strxfrm(i8*, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
