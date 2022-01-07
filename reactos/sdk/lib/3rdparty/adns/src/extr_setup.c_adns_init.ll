; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_setup.c_adns_init.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_setup.c_adns_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }

@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"RES_OPTIONS\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ADNS_RES_OPTIONS\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"/etc/resolv.conf\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"/etc/resolv-adns.conf\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"RES_CONF\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ADNS_RES_CONF\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"RES_CONF_TEXT\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"ADNS_RES_CONF_TEXT\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"LOCALDOMAIN\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ADNS_LOCALDOMAIN\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@cc_entex = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@SECURE_PATH_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adns_init(%struct.TYPE_13__** %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load i32*, i32** @stderr, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32* [ %16, %15 ], [ %18, %17 ]
  %21 = call i32 @init_begin(%struct.TYPE_13__** %8, i32 %12, i32* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %94

26:                                               ; preds = %19
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = call i8* @instrum_getenv(%struct.TYPE_13__* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %9, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = call i8* @instrum_getenv(%struct.TYPE_13__* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %10, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @ccf_options(%struct.TYPE_13__* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 -1, i8* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @ccf_options(%struct.TYPE_13__* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 -1, i8* %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = call i32 @readconfig(%struct.TYPE_13__* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = call i32 @readconfig(%struct.TYPE_13__* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = call i32 @readconfigenv(%struct.TYPE_13__* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = call i32 @readconfigenv(%struct.TYPE_13__* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = call i32 @readconfigenvtext(%struct.TYPE_13__* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = call i32 @readconfigenvtext(%struct.TYPE_13__* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @ccf_options(%struct.TYPE_13__* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 -1, i8* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @ccf_options(%struct.TYPE_13__* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 -1, i8* %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = call i8* @instrum_getenv(%struct.TYPE_13__* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %58 = call i32 @ccf_search(%struct.TYPE_13__* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 -1, i8* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %61 = call i8* @instrum_getenv(%struct.TYPE_13__* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %62 = call i32 @ccf_search(%struct.TYPE_13__* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 -1, i8* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %26
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EINVAL, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = call i32 @init_abort(%struct.TYPE_13__* %78)
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %94

81:                                               ; preds = %67, %26
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %83 = call i32 @init_finish(%struct.TYPE_13__* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %94

88:                                               ; preds = %81
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = load i32, i32* @cc_entex, align 4
  %91 = call i32 @adns__consistency(%struct.TYPE_13__* %89, i32 0, i32 %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %93, align 8
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %86, %73, %24
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @init_begin(%struct.TYPE_13__**, i32, i32*) #1

declare dso_local i8* @instrum_getenv(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @ccf_options(%struct.TYPE_13__*, i8*, i32, i8*) #1

declare dso_local i32 @readconfig(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @readconfigenv(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @readconfigenvtext(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @ccf_search(%struct.TYPE_13__*, i8*, i32, i8*) #1

declare dso_local i32 @init_abort(%struct.TYPE_13__*) #1

declare dso_local i32 @init_finish(%struct.TYPE_13__*) #1

declare dso_local i32 @adns__consistency(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
