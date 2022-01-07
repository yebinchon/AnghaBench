; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_LcidToRfc1766.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_LcidToRfc1766.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i64 }

@MAX_RFC1766_NAME = common dso_local global i32 0, align 4
@lcid_table = common dso_local global %struct.TYPE_3__* null, align 8
@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"#%02d: HRESULT 0x%x (expected 0x%x)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@LCMAP_LOWERCASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"#%02d: got '%s' (expected '%s')\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"got 0x%08x and '%s' (expected E_FAIL)\0A\00", align 1
@LANG_ENGLISH = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"got 0x%08x (expected E_INVALIDARG)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"got 0x%08x and '%s' (expected E_INVALIDARG)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LcidToRfc1766 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LcidToRfc1766() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i32, i32* @MAX_RFC1766_NAME, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @MAX_RFC1766_NAME, align 4
  %11 = mul nsw i32 %10, 2
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %106, %0
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %109

19:                                               ; preds = %14
  %20 = sub i64 %12, 1
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i8* %13, i8 signext 35, i32 %21)
  %23 = sub i64 %12, 1
  %24 = getelementptr inbounds i8, i8* %13, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MAX_RFC1766_NAME, align 4
  %31 = call i32 @pLcidToRfc1766A(i32 %29, i8* %13, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %55, label %39

39:                                               ; preds = %19
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @E_FAIL, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %46, %39
  %51 = phi i1 [ false, %39 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i64 @broken(i32 %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %50, %19
  %56 = phi i1 [ true, %19 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, i64, ...) @ok(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %58, i32 %59, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @S_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %106

70:                                               ; preds = %55
  %71 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %72 = load i32, i32* @LCMAP_LOWERCASE, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @lstrlenA(i32 %82)
  %84 = add nsw i64 %83, 1
  %85 = load i32, i32* @MAX_RFC1766_NAME, align 4
  %86 = call i32 @LCMapStringA(i32 %71, i32 %72, i32 %77, i64 %84, i8* %9, i32 %85)
  %87 = call i32 @lstrcmpA(i8* %13, i8* %9)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %70
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @lstrcmpA(i8* %13, i8* %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i64 @broken(i32 %98)
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %89, %70
  %102 = phi i1 [ true, %70 ], [ %100, %89 ]
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %5, align 8
  %105 = call i32 (i32, i8*, i64, ...) @ok(i32 %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %104, i8* %13, i8* %9)
  br label %106

106:                                              ; preds = %101, %69
  %107 = load i64, i64* %5, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %5, align 8
  br label %14

109:                                              ; preds = %14
  %110 = sub i64 %12, 1
  %111 = trunc i64 %110 to i32
  %112 = call i32 @memset(i8* %13, i8 signext 35, i32 %111)
  %113 = sub i64 %12, 1
  %114 = getelementptr inbounds i8, i8* %13, i64 %113
  store i8 0, i8* %114, align 1
  %115 = load i32, i32* @MAX_RFC1766_NAME, align 4
  %116 = call i32 @pLcidToRfc1766A(i32 -1, i8* %13, i32 %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @E_FAIL, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = call i32 (i32, i8*, i64, ...) @ok(i32 %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %122, i8* %13)
  %124 = load i32, i32* @LANG_ENGLISH, align 4
  %125 = load i32, i32* @MAX_RFC1766_NAME, align 4
  %126 = call i32 @pLcidToRfc1766A(i32 %124, i8* null, i32 %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @E_INVALIDARG, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = call i32 (i32, i8*, i64, ...) @ok(i32 %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %132)
  %134 = sub i64 %12, 1
  %135 = trunc i64 %134 to i32
  %136 = call i32 @memset(i8* %13, i8 signext 35, i32 %135)
  %137 = sub i64 %12, 1
  %138 = getelementptr inbounds i8, i8* %13, i64 %137
  store i8 0, i8* %138, align 1
  %139 = load i32, i32* @LANG_ENGLISH, align 4
  %140 = call i32 @pLcidToRfc1766A(i32 %139, i8* %13, i32 -1)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @E_INVALIDARG, align 4
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = call i32 (i32, i8*, i64, ...) @ok(i32 %144, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %146, i8* %13)
  %148 = sub i64 %12, 1
  %149 = trunc i64 %148 to i32
  %150 = call i32 @memset(i8* %13, i8 signext 35, i32 %149)
  %151 = sub i64 %12, 1
  %152 = getelementptr inbounds i8, i8* %13, i64 %151
  store i8 0, i8* %152, align 1
  %153 = load i32, i32* @LANG_ENGLISH, align 4
  %154 = call i32 @pLcidToRfc1766A(i32 %153, i8* %13, i32 0)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @E_INVALIDARG, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = call i32 (i32, i8*, i64, ...) @ok(i32 %158, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %160, i8* %13)
  %162 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %162)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @pLcidToRfc1766A(i32, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @LCMapStringA(i32, i32, i32, i64, i8*, i32) #2

declare dso_local i64 @lstrlenA(i32) #2

declare dso_local i32 @lstrcmpA(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
