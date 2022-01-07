; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_do_hardening.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_do_hardening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__, %struct.TYPE_15__, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32* }
%struct.TYPE_14__ = type { i32*, i32 }

@LCLIENT_LIST = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@BAD_NODE_TIMEOUT = common dso_local global i32 0, align 4
@HARDENING_INTERVAL = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@HARDEN_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_hardening(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %134, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @LCLIENT_LIST, align 4
  %12 = mul nsw i32 %11, 2
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %137

14:                                               ; preds = %9
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sdiv i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %6, align 8
  %24 = load i32, i32* %3, align 4
  %25 = srem i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %14
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sdiv i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %4, align 8
  %36 = load i32, i32* @AF_INET, align 4
  store i32 %36, i32* %5, align 4
  br label %47

37:                                               ; preds = %14
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sdiv i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %4, align 8
  %46 = load i32, i32* @AF_INET6, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %37, %27
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %52 = call i64 @is_timeout(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %134

55:                                               ; preds = %47
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %120

61:                                               ; preds = %55
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @HARDENING_INTERVAL, align 4
  %67 = call i64 @is_timeout(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %119

69:                                               ; preds = %61
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call { i32*, i32 } @random_node(%struct.TYPE_16__* %70, i32 %71)
  %73 = bitcast %struct.TYPE_14__* %7 to { i32*, i32 }*
  %74 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %73, i32 0, i32 0
  %75 = extractvalue { i32*, i32 } %72, 0
  store i32* %75, i32** %74, align 8
  %76 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %73, i32 0, i32 1
  %77 = extractvalue { i32*, i32 } %72, 1
  store i32 %77, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %79 = call i32 @ipport_isset(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %69
  br label %134

82:                                               ; preds = %69
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i64 @id_equal(i32* %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %134

89:                                               ; preds = %82
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %98 = call i32 @memcpy(i32* %95, i32* %96, i32 %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @send_hardening_getnode_req(%struct.TYPE_16__* %99, %struct.TYPE_14__* %7, %struct.TYPE_14__* %8, i32 %102)
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %89
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %113 = call i32 @memcpy(i32* %109, i32* %111, i32 %112)
  %114 = call i32 (...) @unix_time()
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 8
  br label %118

118:                                              ; preds = %105, %89
  br label %119

119:                                              ; preds = %118, %61
  br label %133

120:                                              ; preds = %55
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @HARDEN_TIMEOUT, align 4
  %126 = call i64 @is_timeout(i32 %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %128, %120
  br label %133

133:                                              ; preds = %132, %119
  br label %134

134:                                              ; preds = %133, %88, %81, %54
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %9

137:                                              ; preds = %9
  ret void
}

declare dso_local i64 @is_timeout(i32, i32) #1

declare dso_local { i32*, i32 } @random_node(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ipport_isset(i32*) #1

declare dso_local i64 @id_equal(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @send_hardening_getnode_req(%struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @unix_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
