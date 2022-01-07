; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_delpeer.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_delpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32 (i32, i32, i32, i32, i32)*, i32 }
%struct.TYPE_15__ = type { i64, i32, i32 (i32, i32, i32, i8*)*, %struct.TYPE_16__*, i32, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i64, i32 }

@DESIRED_CLOSE_CONNECTIONS = common dso_local global i64 0, align 8
@GROUPCHAT_CLOSEST_REMOVED = common dso_local global i32 0, align 4
@CHAT_CHANGE_PEER_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i32)* @delpeer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delpeer(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.TYPE_15__* @get_group_c(%struct.TYPE_17__* %13, i32 %14)
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %184

19:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %62, %19
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @DESIRED_CLOSE_CONNECTIONS, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %65

24:                                               ; preds = %20
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %24
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @id_equal(i32 %40, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %33
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @GROUPCHAT_CLOSEST_REMOVED, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  br label %65

61:                                               ; preds = %33, %24
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %20

65:                                               ; preds = %51, %20
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @getfriend_conn_id_pk(i32 %68, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %85

80:                                               ; preds = %65
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @remove_close_conn(%struct.TYPE_17__* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %65
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, -1
  store i64 %89, i64* %87, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %12, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %85
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = call i32 @free(%struct.TYPE_16__* %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %108, align 8
  br label %148

109:                                              ; preds = %85
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp ne i64 %112, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %109
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i64 %121
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i64 %128
  %130 = call i32 @memcpy(%struct.TYPE_16__* %122, %struct.TYPE_16__* %129, i32 16)
  br label %131

131:                                              ; preds = %116, %109
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = mul i64 16, %137
  %139 = trunc i64 %138 to i32
  %140 = call %struct.TYPE_16__* @realloc(%struct.TYPE_16__* %134, i32 %139)
  store %struct.TYPE_16__* %140, %struct.TYPE_16__** %11, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %142 = icmp eq %struct.TYPE_16__* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %131
  store i32 -1, i32* %4, align 4
  br label %184

144:                                              ; preds = %131
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 3
  store %struct.TYPE_16__* %145, %struct.TYPE_16__** %147, align 8
  br label %148

148:                                              ; preds = %144, %102
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  %151 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %150, align 8
  %152 = icmp ne i32 (i32, i32, i32, i32, i32)* %151, null
  br i1 %152, label %153, label %167

153:                                              ; preds = %148
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 2
  %156 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %155, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @CHAT_CHANGE_PEER_DEL, align 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 %156(i32 %159, i32 %160, i32 %161, i32 %162, i32 %165)
  br label %167

167:                                              ; preds = %153, %148
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  %170 = load i32 (i32, i32, i32, i8*)*, i32 (i32, i32, i32, i8*)** %169, align 8
  %171 = icmp ne i32 (i32, i32, i32, i8*)* %170, null
  br i1 %171, label %172, label %183

172:                                              ; preds = %167
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = load i32 (i32, i32, i32, i8*)*, i32 (i32, i32, i32, i8*)** %174, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load i8*, i8** %12, align 8
  %182 = call i32 %175(i32 %178, i32 %179, i32 %180, i8* %181)
  br label %183

183:                                              ; preds = %172, %167
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %183, %143, %18
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local %struct.TYPE_15__* @get_group_c(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @id_equal(i32, i32) #1

declare dso_local i32 @getfriend_conn_id_pk(i32, i32) #1

declare dso_local i32 @remove_close_conn(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_16__* @realloc(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
