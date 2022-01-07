; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_DHT_save.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_DHT_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_14__* }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@DHT_STATE_COOKIE_GLOBAL = common dso_local global i32 0, align 4
@MAX_SAVED_DHT_NODES = common dso_local global i32 0, align 4
@LCLIENT_LIST = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@DHT_FAKE_FRIEND_NUMBER = common dso_local global i64 0, align 8
@MAX_FRIEND_CLIENTS = common dso_local global i64 0, align 8
@DHT_STATE_TYPE_NODES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DHT_save(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @DHT_STATE_COOKIE_GLOBAL, align 4
  %14 = call i32 @host_to_lendian32(i32* %12, i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 8
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @z_state_save_subheader(i32* %18, i32 0, i32 0)
  store i32* %19, i32** %4, align 8
  %20 = load i32, i32* @MAX_SAVED_DHT_NODES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca %struct.TYPE_18__, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %103, %2
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @LCLIENT_LIST, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %106

28:                                               ; preds = %24
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %28
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %51 = call i32 @memcpy(i32 %42, i32 %49, i32 %50)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %38, %28
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %65
  %76 = load i64, i64* %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %88 = call i32 @memcpy(i32 %79, i32 %86, i32 %87)
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load i64, i64* %5, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %5, align 8
  br label %102

102:                                              ; preds = %75, %65
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %6, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %6, align 8
  br label %24

106:                                              ; preds = %24
  store i64 0, i64* %6, align 8
  br label %107

107:                                              ; preds = %208, %106
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @DHT_FAKE_FRIEND_NUMBER, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i64, i64* %6, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ult i64 %112, %115
  br label %117

117:                                              ; preds = %111, %107
  %118 = phi i1 [ false, %107 ], [ %116, %111 ]
  br i1 %118, label %119, label %211

119:                                              ; preds = %117
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = load i64, i64* %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i64 %123
  store %struct.TYPE_19__* %124, %struct.TYPE_19__** %11, align 8
  store i64 0, i64* %7, align 8
  br label %125

125:                                              ; preds = %204, %119
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* @MAX_FRIEND_CLIENTS, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %207

129:                                              ; preds = %125
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = load i64, i64* %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %129
  %140 = load i64, i64* %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = load i64, i64* %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %152 = call i32 @memcpy(i32 %143, i32 %150, i32 %151)
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = load i64, i64* %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i64, i64* %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = load i64, i64* %5, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %5, align 8
  br label %166

166:                                              ; preds = %139, %129
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %168, align 8
  %170 = load i64, i64* %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %203

176:                                              ; preds = %166
  %177 = load i64, i64* %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = load i64, i64* %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %189 = call i32 @memcpy(i32 %180, i32 %187, i32 %188)
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %191, align 8
  %193 = load i64, i64* %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i64, i64* %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  %201 = load i64, i64* %5, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %5, align 8
  br label %203

203:                                              ; preds = %176, %166
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %7, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %7, align 8
  br label %125

207:                                              ; preds = %125
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %6, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %6, align 8
  br label %107

211:                                              ; preds = %117
  %212 = load i32*, i32** %8, align 8
  %213 = load i32*, i32** %4, align 8
  %214 = load i64, i64* %5, align 8
  %215 = mul i64 8, %214
  %216 = trunc i64 %215 to i32
  %217 = load i64, i64* %5, align 8
  %218 = call i32 @pack_nodes(i32* %213, i32 %216, %struct.TYPE_18__* %23, i64 %217)
  %219 = load i32, i32* @DHT_STATE_TYPE_NODES, align 4
  %220 = call i32* @z_state_save_subheader(i32* %212, i32 %218, i32 %219)
  %221 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %221)
  ret void
}

declare dso_local i32 @host_to_lendian32(i32*, i32) #1

declare dso_local i32* @z_state_save_subheader(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pack_nodes(i32*, i32, %struct.TYPE_18__*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
