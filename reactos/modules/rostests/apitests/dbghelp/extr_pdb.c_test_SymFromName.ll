; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/dbghelp/extr_pdb.c_test_SymFromName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/dbghelp/extr_pdb.c_test_SymFromName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@MAX_SYM_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"dbghelp.dll too old or cannot enumerate symbols!\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"DllMain\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SymTagFunction = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"_DllMain@12\00", align 1
@SymTagPublicSymbol = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"FfsChkdsk\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"_FfsChkdsk@24\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"FfsFormat\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"_FfsFormat@24\00", align 1
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
  %18 = call i32 @supports_pdb(i32 %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = call i32 @skip(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %209

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
  %38 = call i32 @ok_hex(i32 %37, i32 0)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %4, align 8
  %43 = add nsw i64 %42, 4112
  %44 = call i32 @ok_ulonglong(i32 %41, i64 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SymTagFunction, align 4
  %49 = call i32 @ok_hex(i32 %47, i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ok_str(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @INIT_PSYM(i8* %14)
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = call i32 @SymFromName(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_3__* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i32 @ok_int(i32 %58, i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @ok_ulonglong(i32 %63, i64 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ok_hex(i32 %68, i32 4194304)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %4, align 8
  %74 = add nsw i64 %73, 4112
  %75 = call i32 @ok_ulonglong(i32 %72, i64 %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SymTagPublicSymbol, align 4
  %80 = call i32 @ok_hex(i32 %78, i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ok_str(i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %85 = call i32 @INIT_PSYM(i8* %14)
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = call i32 @SymFromName(i32 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_3__* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @TRUE, align 4
  %91 = call i32 @ok_int(i32 %89, i32 %90)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @ok_ulonglong(i32 %94, i64 %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ok_hex(i32 %99, i32 0)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %4, align 8
  %105 = add nsw i64 %104, 4160
  %106 = call i32 @ok_ulonglong(i32 %103, i64 %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SymTagFunction, align 4
  %111 = call i32 @ok_hex(i32 %109, i32 %110)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ok_str(i32 %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %116 = call i32 @INIT_PSYM(i8* %14)
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %119 = call i32 @SymFromName(i32 %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_3__* %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @TRUE, align 4
  %122 = call i32 @ok_int(i32 %120, i32 %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %4, align 8
  %127 = call i32 @ok_ulonglong(i32 %125, i64 %126)
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ok_hex(i32 %130, i32 4194304)
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %4, align 8
  %136 = add nsw i64 %135, 4160
  %137 = call i32 @ok_ulonglong(i32 %134, i64 %136)
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SymTagPublicSymbol, align 4
  %142 = call i32 @ok_hex(i32 %140, i32 %141)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ok_str(i32 %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %147 = call i32 @INIT_PSYM(i8* %14)
  %148 = load i32, i32* %3, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %150 = call i32 @SymFromName(i32 %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_3__* %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @TRUE, align 4
  %153 = call i32 @ok_int(i32 %151, i32 %152)
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load i64, i64* %4, align 8
  %158 = call i32 @ok_ulonglong(i32 %156, i64 %157)
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ok_hex(i32 %161, i32 0)
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i64, i64* %4, align 8
  %167 = add nsw i64 %166, 4208
  %168 = call i32 @ok_ulonglong(i32 %165, i64 %167)
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @SymTagFunction, align 4
  %173 = call i32 @ok_hex(i32 %171, i32 %172)
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ok_str(i32 %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %178 = call i32 @INIT_PSYM(i8* %14)
  %179 = load i32, i32* %3, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %181 = call i32 @SymFromName(i32 %179, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_3__* %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @TRUE, align 4
  %184 = call i32 @ok_int(i32 %182, i32 %183)
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load i64, i64* %4, align 8
  %189 = call i32 @ok_ulonglong(i32 %187, i64 %188)
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @ok_hex(i32 %192, i32 4194304)
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load i64, i64* %4, align 8
  %198 = add nsw i64 %197, 4208
  %199 = call i32 @ok_ulonglong(i32 %196, i64 %198)
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @SymTagPublicSymbol, align 4
  %204 = call i32 @ok_hex(i32 %202, i32 %203)
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @ok_str(i32 %207, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %209

209:                                              ; preds = %22, %20
  %210 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %210)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @supports_pdb(i32, i64) #2

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
