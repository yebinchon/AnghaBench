; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_GetLcidFromRfc1766.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_GetLcidFromRfc1766.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@MAX_RFC1766_NAME = common dso_local global i32 0, align 4
@test_GetLcidFromRfc1766.en = internal global [3 x i8] c"en\00", align 1
@test_GetLcidFromRfc1766.en_them = internal global [8 x i8] c"en-them\00", align 1
@test_GetLcidFromRfc1766.english = internal global [8 x i8] c"english\00", align 1
@lcid_table = common dso_local global %struct.TYPE_3__* null, align 8
@CP_ACP = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"#%02d: HRESULT 0x%x (expected 0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"#%02d: got LCID 0x%x (expected 0x%x)\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"GetLcidFromRfc1766 returned: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@test_GetLcidFromRfc1766.en.3 = internal global [3 x i8] c"en\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Expected \22%s\22,  got \22%s\22n\00", align 1
@test_GetLcidFromRfc1766.en.6 = internal global [3 x i8] c"en\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_GetLcidFromRfc1766 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetLcidFromRfc1766(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32, i32* @MAX_RFC1766_NAME, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %94, %1
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %18 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %97

20:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  %21 = load i32, i32* @CP_ACP, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MAX_RFC1766_NAME, align 4
  %28 = call i32 @MultiByteToWideChar(i32 %21, i32 0, i32 %26, i32 -1, i8* %14, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @IMultiLanguage2_GetLcidFromRfc1766(i32* %29, i32* %5, i8* %14)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %20
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @S_FALSE, align 4
  %48 = icmp eq i32 %46, %47
  br label %49

49:                                               ; preds = %45, %38
  %50 = phi i1 [ false, %38 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @broken(i32 %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %49, %20
  %55 = phi i1 [ true, %20 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, i64, ...) @ok(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %57, i32 %58, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %65, %70
  br i1 %71, label %83, label %72

72:                                               ; preds = %54
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %73, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @broken(i32 %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %72, %54
  %84 = phi i1 [ true, %54 ], [ %82, %72 ]
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, i64, ...) @ok(i32 %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %86, i32 %87, i32 %92)
  br label %94

94:                                               ; preds = %83
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %7, align 8
  br label %15

97:                                               ; preds = %15
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @IMultiLanguage2_GetLcidFromRfc1766(i32* %98, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_GetLcidFromRfc1766.en, i64 0, i64 0))
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @E_INVALIDARG, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = call i32 (i32, i8*, i64, ...) @ok(i32 %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %105)
  %107 = load i32*, i32** %2, align 8
  %108 = call i32 @IMultiLanguage2_GetLcidFromRfc1766(i32* %107, i32* %5, i8* null)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @E_INVALIDARG, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = call i32 (i32, i8*, i64, ...) @ok(i32 %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %114)
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @IMultiLanguage2_GetLcidFromRfc1766(i32* %116, i32* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_GetLcidFromRfc1766.en_them, i64 0, i64 0))
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @E_FAIL, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %97
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @S_FALSE, align 4
  %124 = icmp eq i32 %122, %123
  br label %125

125:                                              ; preds = %121, %97
  %126 = phi i1 [ true, %97 ], [ %124, %121 ]
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = call i32 (i32, i8*, i64, ...) @ok(i32 %127, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %129)
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @S_FALSE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %125
  %135 = load i32*, i32** %2, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @IMultiLanguage2_GetRfc1766FromLcid(i32* %135, i32 %136, i32* %8)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @S_OK, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = call i32 (i32, i8*, i64, ...) @ok(i32 %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %143)
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @ok_w2(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_GetLcidFromRfc1766.en.3, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %134, %125
  %148 = load i32*, i32** %2, align 8
  %149 = call i32 @IMultiLanguage2_GetLcidFromRfc1766(i32* %148, i32* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_GetLcidFromRfc1766.english, i64 0, i64 0))
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @E_FAIL, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %147
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @S_FALSE, align 4
  %156 = icmp eq i32 %154, %155
  br label %157

157:                                              ; preds = %153, %147
  %158 = phi i1 [ true, %147 ], [ %156, %153 ]
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = call i32 (i32, i8*, i64, ...) @ok(i32 %159, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %161)
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @S_FALSE, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %179

166:                                              ; preds = %157
  %167 = load i32*, i32** %2, align 8
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @IMultiLanguage2_GetRfc1766FromLcid(i32* %167, i32 %168, i32* %9)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @S_OK, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = call i32 (i32, i8*, i64, ...) @ok(i32 %173, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %175)
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @ok_w2(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_GetLcidFromRfc1766.en.6, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %166, %157
  %180 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %180)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i8*, i32) #2

declare dso_local i32 @IMultiLanguage2_GetLcidFromRfc1766(i32*, i32*, i8*) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @IMultiLanguage2_GetRfc1766FromLcid(i32*, i32, i32*) #2

declare dso_local i32 @ok_w2(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
