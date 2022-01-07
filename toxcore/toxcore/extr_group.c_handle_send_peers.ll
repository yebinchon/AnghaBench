; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_handle_send_peers.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_handle_send_peers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@GROUPCHAT_STATUS_VALID = common dso_local global i64 0, align 8
@GROUPCHAT_STATUS_CONNECTED = common dso_local global i64 0, align 8
@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32*, i32)* @handle_send_peers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_send_peers(%struct.TYPE_14__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %140

18:                                               ; preds = %4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.TYPE_13__* @get_group_c(%struct.TYPE_14__* %19, i32 %20)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %10, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %23 = icmp ne %struct.TYPE_13__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %140

25:                                               ; preds = %18
  %26 = load i32*, i32** %8, align 8
  store i32* %26, i32** %11, align 8
  br label %27

27:                                               ; preds = %128, %25
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = ptrtoint i32* %30 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = sub nsw i64 %29, %35
  %37 = trunc i64 %36 to i32
  %38 = zext i32 %37 to i64
  %39 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %40 = mul nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = add i64 4, %41
  %43 = add i64 %42, 1
  %44 = icmp uge i64 %38, %43
  br i1 %44, label %45, label %139

45:                                               ; preds = %27
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @memcpy(i32* %12, i32* %46, i32 4)
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @ntohs(i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32* %51, i32** %11, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @addpeer(%struct.TYPE_14__* %52, i32 %53, i32* %54, i32* %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %140

64:                                               ; preds = %45
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @GROUPCHAT_STATUS_VALID, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %64
  %71 = load i32*, i32** %11, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @public_key_cmp(i32* %71, i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %70
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load i64, i64* @GROUPCHAT_STATUS_CONNECTED, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @group_name_send(%struct.TYPE_14__* %88, i32 %89, i32 %94, i32 %99)
  br label %101

101:                                              ; preds = %81, %70, %64
  %102 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %103 = mul nsw i32 %102, 2
  %104 = load i32*, i32** %11, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %11, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %14, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32* %110, i32** %11, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32*, i32** %11, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = ptrtoint i32* %115 to i64
  %118 = ptrtoint i32* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 4
  %121 = sub nsw i64 %114, %120
  %122 = icmp sgt i64 %112, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %101
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %101
  store i32 -1, i32* %5, align 4
  br label %140

128:                                              ; preds = %123
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @setnick(%struct.TYPE_14__* %129, i32 %130, i32 %131, i32* %132, i32 %133)
  %135 = load i32, i32* %14, align 4
  %136 = load i32*, i32** %11, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %11, align 8
  br label %27

139:                                              ; preds = %27
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %127, %63, %24, %17
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_13__* @get_group_c(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @addpeer(%struct.TYPE_14__*, i32, i32*, i32*, i32) #1

declare dso_local i64 @public_key_cmp(i32*, i32) #1

declare dso_local i32 @group_name_send(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @setnick(%struct.TYPE_14__*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
