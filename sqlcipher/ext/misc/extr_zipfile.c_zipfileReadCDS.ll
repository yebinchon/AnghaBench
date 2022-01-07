; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileReadCDS.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileReadCDS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@SQLITE_OK = common dso_local global i32 0, align 4
@ZIPFILE_SIGNATURE_CDS = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@ZIPFILE_CDS_NFILE_OFF = common dso_local global i64 0, align 8
@ZIPFILE_CDS_FIXED_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @zipfileReadCDS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zipfileReadCDS(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i8* @zipfileRead32(i32* %9)
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* @SQLITE_OK, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @ZIPFILE_SIGNATURE_CDS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %17, i32* %7, align 4
  br label %97

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i8* @zipfileRead16(i32* %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 15
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i8* @zipfileRead16(i32* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 14
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @zipfileRead16(i32* %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 13
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i8* @zipfileRead16(i32* %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 12
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i8* @zipfileRead16(i32* %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @zipfileRead16(i32* %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 10
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i8* @zipfileRead32(i32* %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 9
  store i8* %44, i8** %46, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i8* @zipfileRead32(i32* %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 8
  store i8* %48, i8** %50, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i8* @zipfileRead32(i32* %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = load i64, i64* @ZIPFILE_CDS_NFILE_OFF, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = icmp eq i32* %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = call i8* @zipfileRead16(i32* %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i8* @zipfileRead16(i32* %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i8* @zipfileRead16(i32* %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = call i8* @zipfileRead16(i32* %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i8* @zipfileRead16(i32* %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i8* @zipfileRead32(i32* %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call i8* @zipfileRead32(i32* %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = load i64, i64* @ZIPFILE_CDS_FIXED_SZ, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = icmp eq i32* %90, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  br label %97

97:                                               ; preds = %18, %16
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i8* @zipfileRead32(i32*) #1

declare dso_local i8* @zipfileRead16(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
