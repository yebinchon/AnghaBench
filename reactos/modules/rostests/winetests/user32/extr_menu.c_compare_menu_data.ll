; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_compare_menu_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_compare_menu_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_data = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i8*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"expected %d, got %d menu items\0A\00", align 1
@MIIM_FTYPE = common dso_local global i32 0, align 4
@MIIM_ID = common dso_local global i32 0, align 4
@MIIM_STRING = common dso_local global i32 0, align 4
@MIIM_BITMAP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"GetMenuItemInfo(%u) failed\0A\00", align 1
@winetest_debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"item #%u: fType %04x, fState %04x, wID %04x, hbmp %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%u: expected fType %04x, got %04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%u: expected wID %04x, got %04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%u: expected hbmpItem %p, got %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%u: expected cch %u, got %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%u: expected dwTypeData %s, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.menu_data*, i64)* @compare_menu_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compare_menu_data(i32 %0, %struct.menu_data* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.menu_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [20 x i8], align 16
  %11 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %4, align 4
  store %struct.menu_data* %1, %struct.menu_data** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @GetMenuItemCount(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 (i32, i8*, i64, ...) @ok(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %170, %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %173

25:                                               ; preds = %21
  %26 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 40)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 40, i32* %27, align 8
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32 20, i32* %30, align 8
  %31 = load i32, i32* @MIIM_FTYPE, align 4
  %32 = load i32, i32* @MIIM_ID, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MIIM_STRING, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MIIM_BITMAP, align 4
  %37 = or i32 %35, %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* @TRUE, align 4
  %42 = call i32 @GetMenuItemInfoA(i32 %39, i64 %40, i32 %41, %struct.TYPE_4__* %11)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 (i32, i8*, i64, ...) @ok(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @winetest_debug, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %59

48:                                               ; preds = %25
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @trace(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %49, i32 %51, i32 %53, i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %48, %25
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.menu_data*, %struct.menu_data** %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %62, i64 %63
  %65 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %61, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.menu_data*, %struct.menu_data** %5, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %70, i64 %71
  %73 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, i64, ...) @ok(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %69, i32 %74, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.menu_data*, %struct.menu_data** %5, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %80, i64 %81
  %83 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %79, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.menu_data*, %struct.menu_data** %5, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %88, i64 %89
  %91 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, i64, ...) @ok(i32 %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %87, i32 %92, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %59
  %100 = load %struct.menu_data*, %struct.menu_data** %5, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %100, i64 %101
  %103 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %99, %59
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @LOWORD(i32 %108)
  %110 = load %struct.menu_data*, %struct.menu_data** %5, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %110, i64 %111
  %113 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @LOWORD(i32 %114)
  %116 = icmp eq i64 %109, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.menu_data*, %struct.menu_data** %5, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %119, i64 %120
  %122 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, i8*, i64, ...) @ok(i32 %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %118, i32 %123, i32 %125)
  br label %169

127:                                              ; preds = %99
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.menu_data*, %struct.menu_data** %5, align 8
  %131 = load i64, i64* %8, align 8
  %132 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %130, i64 %131
  %133 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @strlen(i32 %134)
  %136 = icmp eq i32 %129, %135
  %137 = zext i1 %136 to i32
  %138 = load i64, i64* %8, align 8
  %139 = load %struct.menu_data*, %struct.menu_data** %5, align 8
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %139, i64 %140
  %142 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @strlen(i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, i64, ...) @ok(i32 %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %138, i32 %144, i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.menu_data*, %struct.menu_data** %5, align 8
  %151 = load i64, i64* %8, align 8
  %152 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %150, i64 %151
  %153 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @strcmp(i8* %149, i32 %154)
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = load i64, i64* %8, align 8
  %160 = load %struct.menu_data*, %struct.menu_data** %5, align 8
  %161 = load i64, i64* %8, align 8
  %162 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %160, i64 %161
  %163 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = ptrtoint i8* %166 to i32
  %168 = call i32 (i32, i8*, i64, ...) @ok(i32 %158, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 %159, i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %127, %106
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %8, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %8, align 8
  br label %21

173:                                              ; preds = %21
  ret void
}

declare dso_local i64 @GetMenuItemCount(i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @GetMenuItemInfoA(i32, i64, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @trace(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
