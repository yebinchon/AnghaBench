; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_pnpentity.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_pnpentity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i64, i64 }
%struct.expr = type { i32 }
%struct.record_pnpentity = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@DIGCF_ALLCLASSES = common dso_local global i32 0, align 4
@DIGCF_PRESENT = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_pnpentity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_pnpentity(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca %struct.table*, align 8
  %4 = alloca %struct.expr*, align 8
  %5 = alloca %struct.record_pnpentity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.table* %0, %struct.table** %3, align 8
  store %struct.expr* %1, %struct.expr** %4, align 8
  %12 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %12, i32* %6, align 4
  %13 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load i32, i32* @DIGCF_ALLCLASSES, align 4
  %15 = load i32, i32* @DIGCF_PRESENT, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @SetupDiGetClassDevsW(i32* null, i32* null, i32* null, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 8, i32* %18, align 4
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %26, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i64, i64* %9, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %9, align 8
  %23 = trunc i64 %21 to i32
  %24 = call i64 @SetupDiEnumDeviceInfo(i32 %20, i32 %23, %struct.TYPE_4__* %8)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %19

27:                                               ; preds = %19
  %28 = load %struct.table*, %struct.table** %3, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @resize_table(%struct.table* %28, i64 %29, i32 4)
  %31 = load %struct.table*, %struct.table** %3, align 8
  %32 = getelementptr inbounds %struct.table, %struct.table* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.table*, %struct.table** %3, align 8
  %34 = getelementptr inbounds %struct.table, %struct.table* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.record_pnpentity*
  store %struct.record_pnpentity* %36, %struct.record_pnpentity** %5, align 8
  store i64 0, i64* %9, align 8
  br label %37

37:                                               ; preds = %84, %27
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %9, align 8
  %41 = trunc i64 %39 to i32
  %42 = call i64 @SetupDiEnumDeviceInfo(i32 %38, i32 %41, %struct.TYPE_4__* %8)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %86

44:                                               ; preds = %37
  %45 = load i32, i32* @MAX_PATH, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %10, align 8
  %48 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %11, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @ARRAY_SIZE(i32* %48)
  %51 = call i64 @SetupDiGetDeviceInstanceIdW(i32 %49, %struct.TYPE_4__* %8, i32* %48, i32 %50, i32* null)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %44
  %54 = call i32 @heap_strdupW(i32* %48)
  %55 = load %struct.record_pnpentity*, %struct.record_pnpentity** %5, align 8
  %56 = getelementptr inbounds %struct.record_pnpentity, %struct.record_pnpentity* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.table*, %struct.table** %3, align 8
  %58 = getelementptr inbounds %struct.table, %struct.table* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load %struct.table*, %struct.table** %3, align 8
  %62 = load %struct.table*, %struct.table** %3, align 8
  %63 = getelementptr inbounds %struct.table, %struct.table* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, 1
  %66 = load %struct.expr*, %struct.expr** %4, align 8
  %67 = call i32 @match_row(%struct.table* %61, i64 %65, %struct.expr* %66, i32* %6)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %53
  %70 = load %struct.table*, %struct.table** %3, align 8
  %71 = load %struct.table*, %struct.table** %3, align 8
  %72 = getelementptr inbounds %struct.table, %struct.table* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, 1
  %75 = call i32 @free_row_values(%struct.table* %70, i64 %74)
  %76 = load %struct.table*, %struct.table** %3, align 8
  %77 = getelementptr inbounds %struct.table, %struct.table* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %77, align 8
  br label %83

80:                                               ; preds = %53
  %81 = load %struct.record_pnpentity*, %struct.record_pnpentity** %5, align 8
  %82 = getelementptr inbounds %struct.record_pnpentity, %struct.record_pnpentity* %81, i32 1
  store %struct.record_pnpentity* %82, %struct.record_pnpentity** %5, align 8
  br label %83

83:                                               ; preds = %80, %69
  br label %84

84:                                               ; preds = %83, %44
  %85 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %85)
  br label %37

86:                                               ; preds = %37
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @SetupDiDestroyDeviceInfoList(i32 %87)
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SetupDiGetClassDevsW(i32*, i32*, i32*, i32) #2

declare dso_local i64 @SetupDiEnumDeviceInfo(i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @resize_table(%struct.table*, i64, i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @SetupDiGetDeviceInstanceIdW(i32, %struct.TYPE_4__*, i32*, i32, i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @heap_strdupW(i32*) #2

declare dso_local i32 @match_row(%struct.table*, i64, %struct.expr*, i32*) #2

declare dso_local i32 @free_row_values(%struct.table*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
