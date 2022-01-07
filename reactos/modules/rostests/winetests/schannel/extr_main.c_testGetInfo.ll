; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/schannel/extr_main.c_testGetInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/schannel/extr_main.c_testGetInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"status: 0x%x\0A\00", align 1
@LSA_BASE_CAPS = common dso_local global i32 0, align 4
@SECPKG_FLAG_APPCONTAINER_PASSTHROUGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"fCapabilities: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"wVersion: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"wRPCID: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"cbMaxToken: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Second package missing\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"GetInfo function missing\0A\00", align 1
@SEC_E_UNSUPPORTED_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetInfo() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @pSpLsaModeInitialize(i32 0, i32* %4, %struct.TYPE_9__** %1, i32* %3)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @STATUS_SUCCESS, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %14, align 8
  %16 = call i32 %15(%struct.TYPE_8__* %2)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @STATUS_SUCCESS, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LSA_BASE_CAPS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LSA_BASE_CAPS, align 4
  %31 = load i32, i32* @SECPKG_FLAG_APPCONTAINER_PASSTHROUGH, align 4
  %32 = or i32 %30, %31
  %33 = icmp eq i32 %29, %32
  br label %34

34:                                               ; preds = %27, %0
  %35 = phi i1 [ true, %0 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 14
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 16384
  br i1 %56, label %61, label %57

57:                                               ; preds = %34
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 24576
  br label %61

61:                                               ; preds = %57, %34
  %62 = phi i1 [ true, %34 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = call i32 @win_skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %150

71:                                               ; preds = %61
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call %struct.TYPE_9__* @getNextSecPkgTable(%struct.TYPE_9__* %72, i32 %73)
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %1, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %76 = icmp ne %struct.TYPE_9__* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %150

78:                                               ; preds = %71
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %80, align 8
  %82 = icmp ne i32 (%struct.TYPE_8__*)* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = call i32 @win_skip(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %150

85:                                               ; preds = %78
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %87, align 8
  %89 = call i32 %88(%struct.TYPE_8__* %2)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i64 @SUCCEEDED(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @SEC_E_UNSUPPORTED_FUNCTION, align 4
  %96 = icmp eq i32 %94, %95
  br label %97

97:                                               ; preds = %93, %85
  %98 = phi i1 [ true, %85 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @SUCCEEDED(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %150

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @LSA_BASE_CAPS, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %117, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @LSA_BASE_CAPS, align 4
  %114 = load i32, i32* @SECPKG_FLAG_APPCONTAINER_PASSTHROUGH, align 4
  %115 = or i32 %113, %114
  %116 = icmp eq i32 %112, %115
  br label %117

117:                                              ; preds = %110, %105
  %118 = phi i1 [ true, %105 ], [ %116, %110 ]
  %119 = zext i1 %118 to i32
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 1
  %126 = zext i1 %125 to i32
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 14
  %133 = zext i1 %132 to i32
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ok(i32 %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 16384
  br i1 %139, label %144, label %140

140:                                              ; preds = %117
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 24576
  br label %144

144:                                              ; preds = %140, %117
  %145 = phi i1 [ true, %117 ], [ %143, %140 ]
  %146 = zext i1 %145 to i32
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ok(i32 %146, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %69, %77, %83, %144, %97
  ret void
}

declare dso_local i32 @pSpLsaModeInitialize(i32, i32*, %struct.TYPE_9__**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local %struct.TYPE_9__* @getNextSecPkgTable(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
