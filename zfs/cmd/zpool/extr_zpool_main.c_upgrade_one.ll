; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_upgrade_one.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_upgrade_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"log\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [93 x i8] c"'log' is now a reserved word\0APool 'log' must be renamed using export and import to upgrade.\0A\00", align 1
@ZPOOL_PROP_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"Pool '%s' is already formatted using more current version '%llu'.\0A\0A\00", align 1
@SPA_VERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"Pool '%s' is already formatted using version %llu.\0A\0A\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"Pool '%s' already has all supported features enabled.\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @upgrade_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_one(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i64, i64* @B_FALSE, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @zpool_get_name(i32* %14)
  %16 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = call i8* @gettext(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @fprintf(i32 %19, i8* %20)
  store i32 1, i32* %3, align 4
  br label %113

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %25 = call i64 @zpool_get_prop_int(i32* %23, i32 %24, i32* null)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = call i8* @gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32*, i32** %4, align 8
  %34 = call i8* @zpool_get_name(i32* %33)
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i8*, ...) @printf(i8* %32, i8* %34, i32 %36)
  store i32 0, i32* %3, align 4
  br label %113

38:                                               ; preds = %22
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SPA_VERSION, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32*, i32** %4, align 8
  %53 = call i8* @zpool_get_name(i32* %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 (i8*, ...) @printf(i8* %51, i8* %53, i32 %57)
  store i32 0, i32* %3, align 4
  br label %113

59:                                               ; preds = %44, %38
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load i64, i64* @B_TRUE, align 8
  store i64 %66, i64* %6, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @upgrade_version(i32* %67, i64 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %113

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %59
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @upgrade_enable_all(i32* %84, i32* %10)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %113

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i64, i64* @B_TRUE, align 8
  store i64 %94, i64* %6, align 8
  br label %105

95:                                               ; preds = %90
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @SPA_VERSION, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32*, i32** %4, align 8
  %102 = call i8* @zpool_get_name(i32* %101)
  %103 = call i32 (i8*, ...) @printf(i8* %100, i8* %102)
  br label %104

104:                                              ; preds = %99, %95
  br label %105

105:                                              ; preds = %104, %93
  br label %106

106:                                              ; preds = %105, %77
  %107 = load i64, i64* %6, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %111 = call i32 (i8*, ...) @printf(i8* %110)
  br label %112

112:                                              ; preds = %109, %106
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %88, %74, %50, %31, %18
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @zpool_get_name(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i64 @zpool_get_prop_int(i32*, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @upgrade_version(i32*, i64) #1

declare dso_local i32 @upgrade_enable_all(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
