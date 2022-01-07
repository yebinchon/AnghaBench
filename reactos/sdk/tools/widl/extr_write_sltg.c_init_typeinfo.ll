; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_init_typeinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_init_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sltg_typeinfo_header = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sltg_hrefmap = type { i32, i32* }

@ATTR_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"*\\Rffff*#%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sltg_typeinfo_header*, %struct.TYPE_5__*, i32, %struct.sltg_hrefmap*)* @init_typeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_typeinfo(%struct.sltg_typeinfo_header* %0, %struct.TYPE_5__* %1, i32 %2, %struct.sltg_hrefmap* %3) #0 {
  %5 = alloca %struct.sltg_typeinfo_header*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sltg_hrefmap*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sltg_typeinfo_header* %0, %struct.sltg_typeinfo_header** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sltg_hrefmap* %3, %struct.sltg_hrefmap** %8, align 8
  %12 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %13 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %12, i32 0, i32 0
  store i32 1281, i32* %13, align 8
  %14 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %15 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %14, i32 0, i32 1
  store i32 -1, i32* %15, align 4
  %16 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %17 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %16, i32 0, i32 2
  store i32 -1, i32* %17, align 8
  %18 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %19 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %18, i32 0, i32 3
  store i32 -1, i32* %19, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ATTR_VERSION, align 4
  %24 = call i32 @get_attrv(i32 %22, i32 %23)
  %25 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %26 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %28 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %27, i32 0, i32 4
  store i32 -131072, i32* %28, align 8
  %29 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %30 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 2, i32* %31, align 8
  %32 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %33 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %36 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 2, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %40 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %43 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %45 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %44, i32 0, i32 5
  store i32 64, i32* %45, align 4
  %46 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %8, align 8
  %47 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %4
  store i32 4, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %74, %50
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %8, align 8
  %54 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %59 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %8, align 8
  %60 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %68 = call i64 @strlen(i8* %67)
  %69 = add nsw i64 10, %68
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %57
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %51

77:                                               ; preds = %51
  %78 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %79 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %82 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.sltg_typeinfo_header*, %struct.sltg_typeinfo_header** %5, align 8
  %85 = getelementptr inbounds %struct.sltg_typeinfo_header, %struct.sltg_typeinfo_header* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %77, %4
  ret void
}

declare dso_local i32 @get_attrv(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
