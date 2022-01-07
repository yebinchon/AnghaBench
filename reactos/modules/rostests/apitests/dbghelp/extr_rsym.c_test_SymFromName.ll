; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/dbghelp/extr_rsym.c_test_SymFromName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/dbghelp/extr_rsym.c_test_SymFromName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@MAX_SYM_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"dbghelp.dll cannot parse rsym\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"DllMain\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SYMFLAG_FUNCTION = common dso_local global i32 0, align 4
@SymTagFunction = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"FfsChkdsk\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"FfsFormat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @test_SymFromName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SymFromName(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @MAX_SYM_NAME, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = add i64 4, %11
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %8, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @supports_rsym(i32 %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = call i32 @skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %119

22:                                               ; preds = %2
  %23 = call i32 @INIT_PSYM(i8* %14)
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = call i32 @SymFromName(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @ok_int(i32 %27, i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @ok_ulonglong(i32 %32, i64 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SYMFLAG_FUNCTION, align 4
  %39 = call i32 @ok_hex(i32 %37, i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %43, 4096
  %45 = call i32 @ok_ulonglong(i32 %42, i64 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SymTagFunction, align 4
  %50 = call i32 @ok_hex(i32 %48, i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ok_str(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @INIT_PSYM(i8* %14)
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = call i32 @SymFromName(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_3__* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 @ok_int(i32 %59, i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @ok_ulonglong(i32 %64, i64 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SYMFLAG_FUNCTION, align 4
  %71 = call i32 @ok_hex(i32 %69, i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %4, align 8
  %76 = add nsw i64 %75, 4159
  %77 = call i32 @ok_ulonglong(i32 %74, i64 %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SymTagFunction, align 4
  %82 = call i32 @ok_hex(i32 %80, i32 %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ok_str(i32 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32 @INIT_PSYM(i8* %14)
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %90 = call i32 @SymFromName(i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_3__* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32 @ok_int(i32 %91, i32 %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %4, align 8
  %98 = call i32 @ok_ulonglong(i32 %96, i64 %97)
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SYMFLAG_FUNCTION, align 4
  %103 = call i32 @ok_hex(i32 %101, i32 %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %4, align 8
  %108 = add nsw i64 %107, 4108
  %109 = call i32 @ok_ulonglong(i32 %106, i64 %108)
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SymTagFunction, align 4
  %114 = call i32 @ok_hex(i32 %112, i32 %113)
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ok_str(i32 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %119

119:                                              ; preds = %22, %20
  %120 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %120)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @supports_rsym(i32, i64) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @INIT_PSYM(i8*) #2

declare dso_local i32 @SymFromName(i32, i8*, %struct.TYPE_3__*) #2

declare dso_local i32 @ok_int(i32, i32) #2

declare dso_local i32 @ok_ulonglong(i32, i64) #2

declare dso_local i32 @ok_hex(i32, i32) #2

declare dso_local i32 @ok_str(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
