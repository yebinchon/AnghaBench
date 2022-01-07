; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c_wnet_use_provider.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c_wnet_use_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.use_connection_context = type { i32 (%struct.use_connection_context*, i32*)*, i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i64 (i32)*, i64 (i32, %struct.TYPE_8__*, i32, i32, i32)*, i64 (%struct.TYPE_8__*, i32, i32)* }

@WNNC_CONNECTION = common dso_local global i32 0, align 4
@WNNC_CON_ADDCONNECTION = common dso_local global i64 0, align 8
@WNNC_CON_ADDCONNECTION3 = common dso_local global i64 0, align 8
@ERROR_BAD_PROVIDER = common dso_local global i64 0, align 8
@WN_ACCESS_DENIED = common dso_local global i64 0, align 8
@WN_ALREADY_CONNECTED = common dso_local global i64 0, align 8
@WN_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.use_connection_context*, %struct.TYPE_8__*, %struct.TYPE_7__*, i64)* @wnet_use_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wnet_use_provider(%struct.use_connection_context* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.use_connection_context*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.use_connection_context* %0, %struct.use_connection_context** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64 (i32)*, i64 (i32)** %13, align 8
  %15 = load i32, i32* @WNNC_CONNECTION, align 4
  %16 = call i64 %14(i32 %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @WNNC_CON_ADDCONNECTION, align 8
  %19 = load i64, i64* @WNNC_CON_ADDCONNECTION3, align 8
  %20 = or i64 %18, %19
  %21 = and i64 %17, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* @ERROR_BAD_PROVIDER, align 8
  store i64 %24, i64* %5, align 8
  br label %133

25:                                               ; preds = %4
  %26 = load i64, i64* @WN_ACCESS_DENIED, align 8
  store i64 %26, i64* %11, align 8
  br label %27

27:                                               ; preds = %110, %25
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @WNNC_CON_ADDCONNECTION3, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64 (i32, %struct.TYPE_8__*, i32, i32, i32)*, i64 (i32, %struct.TYPE_8__*, i32, i32, i32)** %34, align 8
  %36 = icmp ne i64 (i32, %struct.TYPE_8__*, i32, i32, i32)* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64 (i32, %struct.TYPE_8__*, i32, i32, i32)*, i64 (i32, %struct.TYPE_8__*, i32, i32, i32)** %39, align 8
  %41 = load %struct.use_connection_context*, %struct.use_connection_context** %6, align 8
  %42 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = load %struct.use_connection_context*, %struct.use_connection_context** %6, align 8
  %46 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.use_connection_context*, %struct.use_connection_context** %6, align 8
  %49 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.use_connection_context*, %struct.use_connection_context** %6, align 8
  %52 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i64 %40(i32 %43, %struct.TYPE_8__* %44, i32 %47, i32 %50, i32 %53)
  store i64 %54, i64* %11, align 8
  br label %78

55:                                               ; preds = %32, %27
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @WNNC_CON_ADDCONNECTION, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i64 (%struct.TYPE_8__*, i32, i32)*, i64 (%struct.TYPE_8__*, i32, i32)** %62, align 8
  %64 = icmp ne i64 (%struct.TYPE_8__*, i32, i32)* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i64 (%struct.TYPE_8__*, i32, i32)*, i64 (%struct.TYPE_8__*, i32, i32)** %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = load %struct.use_connection_context*, %struct.use_connection_context** %6, align 8
  %71 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.use_connection_context*, %struct.use_connection_context** %6, align 8
  %74 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 %68(%struct.TYPE_8__* %69, i32 %72, i32 %75)
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %65, %60, %55
  br label %78

78:                                               ; preds = %77, %37
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* @WN_ALREADY_CONNECTED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load i64, i64* %9, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = sub nsw i32 %91, 1
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %89, align 1
  br label %94

94:                                               ; preds = %85, %82, %78
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %9, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* @WN_ALREADY_CONNECTED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp sge i32 %108, 67
  br label %110

110:                                              ; preds = %102, %98, %95
  %111 = phi i1 [ false, %98 ], [ false, %95 ], [ %109, %102 ]
  br i1 %111, label %27, label %112

112:                                              ; preds = %110
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* @WN_SUCCESS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %112
  %117 = load %struct.use_connection_context*, %struct.use_connection_context** %6, align 8
  %118 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load %struct.use_connection_context*, %struct.use_connection_context** %6, align 8
  %123 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %122, i32 0, i32 0
  %124 = load i32 (%struct.use_connection_context*, i32*)*, i32 (%struct.use_connection_context*, i32*)** %123, align 8
  %125 = load %struct.use_connection_context*, %struct.use_connection_context** %6, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = bitcast i8* %128 to i32*
  %130 = call i32 %124(%struct.use_connection_context* %125, i32* %129)
  br label %131

131:                                              ; preds = %121, %116, %112
  %132 = load i64, i64* %11, align 8
  store i64 %132, i64* %5, align 8
  br label %133

133:                                              ; preds = %131, %23
  %134 = load i64, i64* %5, align 8
  ret i64 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
