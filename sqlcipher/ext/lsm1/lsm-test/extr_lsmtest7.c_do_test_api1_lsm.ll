; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest7.c_do_test_api1_lsm.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest7.c_do_test_api1_lsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSM_OK = common dso_local global i32 0, align 4
@LSM_MISUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"jjj\00", align 1
@LSM_SEEK_GE = common dso_local global i32 0, align 4
@LSM_SEEK_LE = common dso_local global i32 0, align 4
@LSM_SEEK_LEFAST = common dso_local global i32 0, align 4
@LSM_SEEK_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @do_test_api1_lsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test_api1_lsm(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lsm_csr_open(i32* %10, i32** %6)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @LSM_OK, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @testCompareInt(i32 %12, i32 %13, i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @lsm_csr_next(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @LSM_MISUSE, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @testCompareInt(i32 %18, i32 %19, i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @lsm_csr_prev(i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @LSM_MISUSE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @testCompareInt(i32 %24, i32 %25, i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @LSM_SEEK_GE, align 4
  %30 = call i32 @lsm_csr_seek(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @LSM_OK, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @testCompareInt(i32 %31, i32 %32, i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @lsm_csr_next(i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @LSM_OK, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @testCompareInt(i32 %37, i32 %38, i32* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @lsm_csr_prev(i32* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @LSM_MISUSE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @testCompareInt(i32 %43, i32 %44, i32* %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @LSM_SEEK_LE, align 4
  %49 = call i32 @lsm_csr_seek(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @LSM_OK, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @testCompareInt(i32 %50, i32 %51, i32* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @lsm_csr_next(i32* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @LSM_MISUSE, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @testCompareInt(i32 %56, i32 %57, i32* %58)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @lsm_csr_prev(i32* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @LSM_OK, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @testCompareInt(i32 %62, i32 %63, i32* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @LSM_SEEK_LEFAST, align 4
  %68 = call i32 @lsm_csr_seek(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @LSM_OK, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @testCompareInt(i32 %69, i32 %70, i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @lsm_csr_next(i32* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @LSM_MISUSE, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @testCompareInt(i32 %75, i32 %76, i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @lsm_csr_prev(i32* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @LSM_MISUSE, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @testCompareInt(i32 %81, i32 %82, i32* %83)
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @lsm_csr_key(i32* %85, i8** %9, i32* %8)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @LSM_OK, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @testCompareInt(i32 %87, i32 %88, i32* %89)
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @lsm_csr_open(i32* %91, i32** %7)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* @LSM_OK, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @testCompareInt(i32 %93, i32 %94, i32* %95)
  %97 = load i32*, i32** %7, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @LSM_SEEK_EQ, align 4
  %101 = call i32 @lsm_csr_seek(i32* %97, i8* %98, i32 %99, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* @LSM_OK, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @testCompareInt(i32 %102, i32 %103, i32* %104)
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @lsm_csr_valid(i32* %106)
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @testCompareInt(i32 1, i32 %107, i32* %108)
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @lsm_csr_next(i32* %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* @LSM_MISUSE, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @testCompareInt(i32 %112, i32 %113, i32* %114)
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @lsm_csr_prev(i32* %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* @LSM_MISUSE, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @testCompareInt(i32 %118, i32 %119, i32* %120)
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @lsm_csr_close(i32* %122)
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @lsm_csr_first(i32* %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* @LSM_OK, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @testCompareInt(i32 %126, i32 %127, i32* %128)
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @lsm_csr_next(i32* %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* @LSM_OK, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @testCompareInt(i32 %132, i32 %133, i32* %134)
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @lsm_csr_prev(i32* %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* @LSM_MISUSE, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @testCompareInt(i32 %138, i32 %139, i32* %140)
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @lsm_csr_last(i32* %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* @LSM_OK, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @testCompareInt(i32 %144, i32 %145, i32* %146)
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @lsm_csr_prev(i32* %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* @LSM_OK, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @testCompareInt(i32 %150, i32 %151, i32* %152)
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @lsm_csr_next(i32* %154)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* @LSM_MISUSE, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @testCompareInt(i32 %156, i32 %157, i32* %158)
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @lsm_csr_first(i32* %160)
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %166, %2
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 @lsm_csr_valid(i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 @lsm_csr_next(i32* %167)
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* @LSM_OK, align 4
  %170 = load i32, i32* %5, align 4
  %171 = load i32*, i32** %4, align 8
  %172 = call i32 @testCompareInt(i32 %169, i32 %170, i32* %171)
  br label %162

173:                                              ; preds = %162
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @lsm_csr_next(i32* %174)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* @LSM_OK, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32*, i32** %4, align 8
  %179 = call i32 @testCompareInt(i32 %176, i32 %177, i32* %178)
  %180 = load i32*, i32** %6, align 8
  %181 = call i32 @lsm_csr_prev(i32* %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* @LSM_MISUSE, align 4
  %183 = load i32, i32* %5, align 4
  %184 = load i32*, i32** %4, align 8
  %185 = call i32 @testCompareInt(i32 %182, i32 %183, i32* %184)
  %186 = load i32*, i32** %6, align 8
  %187 = call i32 @lsm_csr_last(i32* %186)
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %192, %173
  %189 = load i32*, i32** %6, align 8
  %190 = call i32 @lsm_csr_valid(i32* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = load i32*, i32** %6, align 8
  %194 = call i32 @lsm_csr_prev(i32* %193)
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* @LSM_OK, align 4
  %196 = load i32, i32* %5, align 4
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @testCompareInt(i32 %195, i32 %196, i32* %197)
  br label %188

199:                                              ; preds = %188
  %200 = load i32*, i32** %6, align 8
  %201 = call i32 @lsm_csr_prev(i32* %200)
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* @LSM_OK, align 4
  %203 = load i32, i32* %5, align 4
  %204 = load i32*, i32** %4, align 8
  %205 = call i32 @testCompareInt(i32 %202, i32 %203, i32* %204)
  %206 = load i32*, i32** %6, align 8
  %207 = call i32 @lsm_csr_next(i32* %206)
  store i32 %207, i32* %5, align 4
  %208 = load i32, i32* @LSM_MISUSE, align 4
  %209 = load i32, i32* %5, align 4
  %210 = load i32*, i32** %4, align 8
  %211 = call i32 @testCompareInt(i32 %208, i32 %209, i32* %210)
  %212 = load i32*, i32** %6, align 8
  %213 = call i32 @lsm_csr_close(i32* %212)
  ret void
}

declare dso_local i32 @lsm_csr_open(i32*, i32**) #1

declare dso_local i32 @testCompareInt(i32, i32, i32*) #1

declare dso_local i32 @lsm_csr_next(i32*) #1

declare dso_local i32 @lsm_csr_prev(i32*) #1

declare dso_local i32 @lsm_csr_seek(i32*, i8*, i32, i32) #1

declare dso_local i32 @lsm_csr_key(i32*, i8**, i32*) #1

declare dso_local i32 @lsm_csr_valid(i32*) #1

declare dso_local i32 @lsm_csr_close(i32*) #1

declare dso_local i32 @lsm_csr_first(i32*) #1

declare dso_local i32 @lsm_csr_last(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
