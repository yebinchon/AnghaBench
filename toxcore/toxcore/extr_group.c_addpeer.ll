; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_addpeer.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_addpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 (i32, i32, i32, i32, i32)* }
%struct.TYPE_13__ = type { i32, i32, i32 (i32, i32, i32)*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@CHAT_CHANGE_PEER_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i32*, i32*, i32)* @addpeer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addpeer(%struct.TYPE_15__* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.TYPE_13__* @get_group_c(%struct.TYPE_15__* %15, i32 %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %12, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %19 = icmp ne %struct.TYPE_13__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %181

21:                                               ; preds = %5
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @peer_in_chat(%struct.TYPE_13__* %22, i32* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @id_copy(i32 %35, i32* %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %181

49:                                               ; preds = %27
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %181

51:                                               ; preds = %21
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @get_peer_index(%struct.TYPE_13__* %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 -1, i32* %6, align 4
  br label %181

58:                                               ; preds = %51
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = mul i64 16, %66
  %68 = trunc i64 %67 to i32
  %69 = call %struct.TYPE_14__* @realloc(%struct.TYPE_14__* %61, i32 %68)
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %14, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %71 = icmp eq %struct.TYPE_14__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  store i32 -1, i32* %6, align 4
  br label %181

73:                                               ; preds = %58
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i64 %78
  %80 = call i32 @memset(%struct.TYPE_14__* %79, i32 0, i32 16)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %83, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @id_copy(i32 %93, i32* %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @id_copy(i32 %105, i32* %106)
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  store i32 %108, i32* %117, align 4
  %118 = call i32 (...) @unix_time()
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  store i32 %118, i32* %127, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @add_to_closest(%struct.TYPE_15__* %132, i32 %133, i32* %134, i32* %135)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 2
  %139 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %138, align 8
  %140 = icmp ne i32 (i32, i32, i32, i32, i32)* %139, null
  br i1 %140, label %141, label %158

141:                                              ; preds = %73
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %143, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, 1
  %153 = load i32, i32* @CHAT_CHANGE_PEER_ADD, align 4
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 %144(i32 %147, i32 %148, i32 %152, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %141, %73
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %160, align 8
  %162 = icmp ne i32 (i32, i32, i32)* %161, null
  br i1 %162, label %163, label %176

163:                                              ; preds = %158
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 2
  %166 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %165, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 %173, 1
  %175 = call i32 %166(i32 %169, i32 %170, i32 %174)
  br label %176

176:                                              ; preds = %163, %158
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %176, %72, %57, %49, %48, %20
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local %struct.TYPE_13__* @get_group_c(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @peer_in_chat(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @id_copy(i32, i32*) #1

declare dso_local i32 @get_peer_index(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_14__* @realloc(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @unix_time(...) #1

declare dso_local i32 @add_to_closest(%struct.TYPE_15__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
