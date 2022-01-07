; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_metadataquery.c_map_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_metadataquery.c_map_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.string_t = type { i64, i32 }

@str2vt = common dso_local global %struct.TYPE_3__* null, align 8
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@NORM_IGNORECASE = common dso_local global i32 0, align 4
@CSTR_EQUAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"type %s is not recognized\0A\00", align 1
@VT_ILLEGAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_t*)* @map_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_type(%struct.string_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.string_t*, align 8
  %4 = alloca i64, align 8
  store %struct.string_t* %0, %struct.string_t** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %50, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @str2vt, align 8
  %8 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %53

10:                                               ; preds = %5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @str2vt, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.string_t*, %struct.string_t** %3, align 8
  %17 = getelementptr inbounds %struct.string_t, %struct.string_t* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %10
  %21 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %22 = load i32, i32* @NORM_IGNORECASE, align 4
  %23 = load %struct.string_t*, %struct.string_t** %3, align 8
  %24 = getelementptr inbounds %struct.string_t, %struct.string_t* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.string_t*, %struct.string_t** %3, align 8
  %27 = getelementptr inbounds %struct.string_t, %struct.string_t* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @str2vt, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @str2vt, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @CompareStringW(i32 %21, i32 %22, i32 %25, i64 %28, i32 %33, i64 %38)
  %40 = load i64, i64* @CSTR_EQUAL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %20
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @str2vt, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %2, align 4
  br label %63

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %48, %10
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %4, align 8
  br label %5

53:                                               ; preds = %5
  %54 = load %struct.string_t*, %struct.string_t** %3, align 8
  %55 = getelementptr inbounds %struct.string_t, %struct.string_t* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.string_t*, %struct.string_t** %3, align 8
  %58 = getelementptr inbounds %struct.string_t, %struct.string_t* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @wine_dbgstr_wn(i32 %56, i64 %59)
  %61 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @VT_ILLEGAL, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %53, %42
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @CompareStringW(i32, i32, i32, i64, i32, i64) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_wn(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
