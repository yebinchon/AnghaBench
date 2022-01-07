; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_create_menuitem_from_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_create_menuitem_from_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_data = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32, i64, i64 }

@MIIM_FTYPE = common dso_local global i32 0, align 4
@MIIM_ID = common dso_local global i32 0, align 4
@MIIM_STATE = common dso_local global i32 0, align 4
@MFT_BITMAP = common dso_local global i32 0, align 4
@MIIM_BITMAP = common dso_local global i32 0, align 4
@MFT_SEPARATOR = common dso_local global i32 0, align 4
@MIIM_STRING = common dso_local global i32 0, align 4
@MF_HELP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%d: InsertMenuItem(%04x, %04x, %p) error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.menu_data*, i64)* @create_menuitem_from_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_menuitem_from_data(%struct.menu_data* %0, i64 %1) #0 {
  %3 = alloca %struct.menu_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  store %struct.menu_data* %0, %struct.menu_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = bitcast %struct.TYPE_3__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 48, i1 false)
  %10 = bitcast i8* %9 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 48, i32* %11, align 8
  %12 = call i64 (...) @CreateMenu()
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %124, %2
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %127

21:                                               ; preds = %17
  %22 = call i32 @SetLastError(i32 -559038737)
  %23 = load i32, i32* @MIIM_FTYPE, align 4
  %24 = load i32, i32* @MIIM_ID, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MIIM_STATE, align 4
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %30, i64 %31
  %33 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MFT_BITMAP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %21
  %39 = load i32, i32* @MIIM_BITMAP, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  %43 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %43, i64 %44
  %46 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  store i64 %47, i64* %48, align 8
  br label %80

49:                                               ; preds = %21
  %50 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %50, i64 %51
  %53 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MFT_SEPARATOR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @MFT_SEPARATOR, align 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %59, i32* %60, align 8
  br label %79

61:                                               ; preds = %49
  %62 = load i32, i32* @MIIM_STRING, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  %66 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %66, i64 %67
  %69 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  store i64 %70, i64* %71, align 8
  %72 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %72, i64 %73
  %75 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @strlen(i64 %76)
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store i32 %77, i32* %78, align 8
  br label %79

79:                                               ; preds = %61, %58
  br label %80

80:                                               ; preds = %79, %38
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %82, i64 %83
  %85 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MF_HELP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load i32, i32* @MF_HELP, align 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %90, %80
  %96 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %96, i64 %97
  %99 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 %100, i32* %101, align 4
  %102 = load i64, i64* %5, align 8
  %103 = load i32, i32* @TRUE, align 4
  %104 = call i32 @InsertMenuItemA(i64 %102, i32 -1, i32 %103, %struct.TYPE_3__* %8)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i64, i64* %6, align 8
  %107 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %107, i64 %108
  %110 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %112, i64 %113
  %115 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %118 = load i64, i64* %6, align 8
  %119 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %117, i64 %118
  %120 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (...) @GetLastError()
  %123 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %106, i32 %111, i32 %116, i64 %121, i32 %122)
  br label %124

124:                                              ; preds = %95
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %6, align 8
  br label %17

127:                                              ; preds = %17
  %128 = load i64, i64* %5, align 8
  ret i64 %128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @CreateMenu(...) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @strlen(i64) #2

declare dso_local i32 @InsertMenuItemA(i64, i32, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @ok(i32, i8*, i64, i32, i32, i64, i32) #2

declare dso_local i32 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
