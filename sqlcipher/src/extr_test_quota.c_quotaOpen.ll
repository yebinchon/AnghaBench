; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_quotaOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_quotaOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { {}* }
%struct.TYPE_24__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 (%struct.TYPE_24__*)* }
%struct.TYPE_26__ = type { %struct.TYPE_22__, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_25__ = type { i32, i32 }

@gQuota = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@SQLITE_OPEN_MAIN_DB = common dso_local global i32 0, align 4
@SQLITE_OPEN_WAL = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OPEN_DELETEONCLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i8*, %struct.TYPE_24__*, i32, i32*)* @quotaOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quotaOpen(%struct.TYPE_23__* %0, i8* %1, %struct.TYPE_24__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @gQuota, i32 0, i32 2), align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @SQLITE_OPEN_MAIN_DB, align 4
  %21 = load i32, i32* @SQLITE_OPEN_WAL, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %5
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.TYPE_23__*, i8*, %struct.TYPE_24__*, i32, i32*)**
  %29 = load i32 (%struct.TYPE_23__*, i8*, %struct.TYPE_24__*, i32, i32*)*, i32 (%struct.TYPE_23__*, i8*, %struct.TYPE_24__*, i32, i32*)** %28, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 %29(%struct.TYPE_23__* %30, i8* %31, %struct.TYPE_24__* %32, i32 %33, i32* %34)
  store i32 %35, i32* %6, align 4
  br label %121

36:                                               ; preds = %5
  %37 = call i32 (...) @quotaEnter()
  %38 = load i8*, i8** %8, align 8
  %39 = call i32* @quotaGroupFind(i8* %38)
  store i32* %39, i32** %15, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = bitcast {}** %44 to i32 (%struct.TYPE_23__*, i8*, %struct.TYPE_24__*, i32, i32*)**
  %46 = load i32 (%struct.TYPE_23__*, i8*, %struct.TYPE_24__*, i32, i32*)*, i32 (%struct.TYPE_23__*, i8*, %struct.TYPE_24__*, i32, i32*)** %45, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 %46(%struct.TYPE_23__* %47, i8* %48, %struct.TYPE_24__* %49, i32 %50, i32* %51)
  store i32 %52, i32* %12, align 4
  br label %118

53:                                               ; preds = %36
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %55 = bitcast %struct.TYPE_24__* %54 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %55, %struct.TYPE_26__** %13, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %57 = call %struct.TYPE_24__* @quotaSubOpen(%struct.TYPE_24__* %56)
  store %struct.TYPE_24__* %57, %struct.TYPE_24__** %16, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = bitcast {}** %59 to i32 (%struct.TYPE_23__*, i8*, %struct.TYPE_24__*, i32, i32*)**
  %61 = load i32 (%struct.TYPE_23__*, i8*, %struct.TYPE_24__*, i32, i32*)*, i32 (%struct.TYPE_23__*, i8*, %struct.TYPE_24__*, i32, i32*)** %60, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 %61(%struct.TYPE_23__* %62, i8* %63, %struct.TYPE_24__* %64, i32 %65, i32* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %117

71:                                               ; preds = %53
  %72 = load i32*, i32** %15, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call %struct.TYPE_25__* @quotaFindFile(i32* %72, i8* %73, i32 1)
  store %struct.TYPE_25__* %74, %struct.TYPE_25__** %14, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %76 = icmp eq %struct.TYPE_25__* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = call i32 (...) @quotaLeave()
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %82, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %85 = call i32 %83(%struct.TYPE_24__* %84)
  %86 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %86, i32* %6, align 4
  br label %121

87:                                               ; preds = %71
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @SQLITE_OPEN_DELETEONCLOSE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 1
  store %struct.TYPE_25__* %99, %struct.TYPE_25__** %101, align 8
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %87
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  store i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @gQuota, i32 0, i32 1), i32** %111, align 8
  br label %116

112:                                              ; preds = %87
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  store i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @gQuota, i32 0, i32 0), i32** %115, align 8
  br label %116

116:                                              ; preds = %112, %108
  br label %117

117:                                              ; preds = %116, %53
  br label %118

118:                                              ; preds = %117, %42
  %119 = call i32 (...) @quotaLeave()
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %118, %77, %25
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @quotaEnter(...) #1

declare dso_local i32* @quotaGroupFind(i8*) #1

declare dso_local %struct.TYPE_24__* @quotaSubOpen(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_25__* @quotaFindFile(i32*, i8*, i32) #1

declare dso_local i32 @quotaLeave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
