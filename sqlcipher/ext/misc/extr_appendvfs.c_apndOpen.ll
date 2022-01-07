; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_appendvfs.c_apndOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_appendvfs.c_apndOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { {}*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_27__*, i32*)*, i32 (%struct.TYPE_27__*)* }
%struct.TYPE_28__ = type { i32, i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32* }

@SQLITE_OPEN_MAIN_DB = common dso_local global i32 0, align 4
@apnd_io_methods = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_CANTOPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i8*, %struct.TYPE_27__*, i32, i32*)* @apndOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apndOpen(%struct.TYPE_26__* %0, i8* %1, %struct.TYPE_27__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %18 = call %struct.TYPE_26__* @ORIGVFS(%struct.TYPE_26__* %17)
  store %struct.TYPE_26__* %18, %struct.TYPE_26__** %14, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @SQLITE_OPEN_MAIN_DB, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %5
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.TYPE_26__*, i8*, %struct.TYPE_27__*, i32, i32*)**
  %27 = load i32 (%struct.TYPE_26__*, i8*, %struct.TYPE_27__*, i32, i32*)*, i32 (%struct.TYPE_26__*, i8*, %struct.TYPE_27__*, i32, i32*)** %26, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 %27(%struct.TYPE_26__* %28, i8* %29, %struct.TYPE_27__* %30, i32 %31, i32* %32)
  store i32 %33, i32* %6, align 4
  br label %130

34:                                               ; preds = %5
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %36 = bitcast %struct.TYPE_27__* %35 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %36, %struct.TYPE_28__** %12, align 8
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %38 = call i32 @memset(%struct.TYPE_28__* %37, i32 0, i32 24)
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %40 = call %struct.TYPE_27__* @ORIGFILE(%struct.TYPE_27__* %39)
  store %struct.TYPE_27__* %40, %struct.TYPE_27__** %13, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  store i32* @apnd_io_methods, i32** %43, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.TYPE_26__*, i8*, %struct.TYPE_27__*, i32, i32*)**
  %47 = load i32 (%struct.TYPE_26__*, i8*, %struct.TYPE_27__*, i32, i32*)*, i32 (%struct.TYPE_26__*, i8*, %struct.TYPE_27__*, i32, i32*)** %46, align 8
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 %47(%struct.TYPE_26__* %48, i8* %49, %struct.TYPE_27__* %50, i32 %51, i32* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %34
  br label %122

57:                                               ; preds = %34
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_27__*, i32*)*, i32 (%struct.TYPE_27__*, i32*)** %61, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %64 = call i32 %62(%struct.TYPE_27__* %63, i32* %16)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 1
  %72 = load i32 (%struct.TYPE_27__*)*, i32 (%struct.TYPE_27__*)** %71, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %74 = call i32 %72(%struct.TYPE_27__* %73)
  br label %122

75:                                               ; preds = %57
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %78 = call i64 @apndIsOrdinaryDatabaseFile(i32 %76, %struct.TYPE_27__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @memmove(%struct.TYPE_27__* %81, %struct.TYPE_27__* %82, i32 %85)
  %87 = load i32, i32* @SQLITE_OK, align 4
  store i32 %87, i32* %6, align 4
  br label %130

88:                                               ; preds = %75
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %93 = call i32 @apndReadMark(i32 %91, %struct.TYPE_27__* %92)
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* @SQLITE_OK, align 4
  store i32 %101, i32* %6, align 4
  br label %130

102:                                              ; preds = %88
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 1
  %112 = load i32 (%struct.TYPE_27__*)*, i32 (%struct.TYPE_27__*)** %111, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %114 = call i32 %112(%struct.TYPE_27__* %113)
  %115 = load i32, i32* @SQLITE_CANTOPEN, align 4
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %107, %102
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 4095
  %119 = and i32 %118, -4096
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %116, %67, %56
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 0
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %127, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %100, %80, %23
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.TYPE_26__* @ORIGVFS(%struct.TYPE_26__*) #1

declare dso_local i32 @memset(%struct.TYPE_28__*, i32, i32) #1

declare dso_local %struct.TYPE_27__* @ORIGFILE(%struct.TYPE_27__*) #1

declare dso_local i64 @apndIsOrdinaryDatabaseFile(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @memmove(%struct.TYPE_27__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @apndReadMark(i32, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
