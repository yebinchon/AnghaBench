; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_OpenCommon.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_OpenCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.discovery_sys = type { i64, i32*, i32, i32*, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@NB_PROTOCOLS = common dso_local global i32 0, align 4
@protocols = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"no services found\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"mDNS: listening to %s %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"renderer\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@MDNS_ADDR_IPV4 = common dso_local global i32 0, align 4
@MDNS_PORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@RunRD = common dso_local global i32 0, align 4
@RunSD = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Can't run the lookup thread\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.discovery_sys*, i32)* @OpenCommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenCommon(i32* %0, %struct.discovery_sys* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.discovery_sys*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.discovery_sys* %1, %struct.discovery_sys** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.discovery_sys*, %struct.discovery_sys** %6, align 8
  %14 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %13, i32 0, i32 5
  %15 = call i32 @atomic_init(i32* %14, i32 0)
  %16 = load %struct.discovery_sys*, %struct.discovery_sys** %6, align 8
  %17 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %16, i32 0, i32 4
  %18 = call i32 @vlc_array_init(i32* %17)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %48, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @NB_PROTOCOLS, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @protocols, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %23
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @protocols, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.discovery_sys*, %struct.discovery_sys** %6, align 8
  %40 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.discovery_sys*, %struct.discovery_sys** %6, align 8
  %43 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %38, i32* %46, align 4
  br label %47

47:                                               ; preds = %32, %23
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %19

51:                                               ; preds = %19
  %52 = load %struct.discovery_sys*, %struct.discovery_sys** %6, align 8
  %53 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @msg_Err(i32* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %115

59:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %81, %59
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = load %struct.discovery_sys*, %struct.discovery_sys** %6, align 8
  %64 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %60
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.discovery_sys*, %struct.discovery_sys** %6, align 8
  %70 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %80 = call i32 @msg_Dbg(i32* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %75, i8* %79)
  br label %81

81:                                               ; preds = %67
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %60

84:                                               ; preds = %60
  %85 = load %struct.discovery_sys*, %struct.discovery_sys** %6, align 8
  %86 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %85, i32 0, i32 1
  %87 = load i32, i32* @MDNS_ADDR_IPV4, align 4
  %88 = load i32, i32* @MDNS_PORT, align 4
  %89 = call i32 @mdns_init(i32** %86, i32 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @print_error(i32* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %115

95:                                               ; preds = %84
  %96 = load %struct.discovery_sys*, %struct.discovery_sys** %6, align 8
  %97 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %96, i32 0, i32 2
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @RunRD, align 4
  br label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @RunSD, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %108 = call i64 @vlc_clone(i32* %97, i32 %105, i32* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @msg_Err(i32* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %115

113:                                              ; preds = %104
  %114 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %114, i32* %4, align 4
  br label %129

115:                                              ; preds = %110, %91, %56
  %116 = load %struct.discovery_sys*, %struct.discovery_sys** %6, align 8
  %117 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.discovery_sys*, %struct.discovery_sys** %6, align 8
  %122 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @mdns_destroy(i32* %123)
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.discovery_sys*, %struct.discovery_sys** %6, align 8
  %127 = call i32 @free(%struct.discovery_sys* %126)
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %125, %113
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @atomic_init(i32*, i32) #1

declare dso_local i32 @vlc_array_init(i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i32, i8*) #1

declare dso_local i32 @mdns_init(i32**, i32, i32) #1

declare dso_local i32 @print_error(i32*, i8*, i32) #1

declare dso_local i64 @vlc_clone(i32*, i32, i32*, i32) #1

declare dso_local i32 @mdns_destroy(i32*) #1

declare dso_local i32 @free(%struct.discovery_sys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
