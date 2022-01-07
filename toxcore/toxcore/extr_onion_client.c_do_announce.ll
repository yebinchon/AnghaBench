; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_do_announce.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_do_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i64 }

@MAX_ONION_CLIENTS_ANNOUNCE = common dso_local global i32 0, align 4
@ONION_NODE_TIMEOUT = common dso_local global i32 0, align 4
@ANNOUNCE_INTERVAL_NOT_ANNOUNCED = common dso_local global i32 0, align 4
@ANNOUNCE_INTERVAL_ANNOUNCED = common dso_local global i32 0, align 4
@MAX_PATH_NODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @do_announce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_announce(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %113, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MAX_ONION_CLIENTS_ANNOUNCE, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %116

17:                                               ; preds = %13
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ONION_NODE_TIMEOUT, align 4
  %25 = call i64 @is_timeout(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %113

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %113

44:                                               ; preds = %28
  %45 = load i32, i32* @ANNOUNCE_INTERVAL_NOT_ANNOUNCED, align 4
  store i32 %45, i32* %6, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = load i32, i32* %3, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @path_exists(i32* %55, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @ANNOUNCE_INTERVAL_ANNOUNCED, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %53, %44
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = load i32, i32* %3, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @is_timeout(i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %112

76:                                               ; preds = %66
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = load i32, i32* %3, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = load i32, i32* %3, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = load i32, i32* %3, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = load i32, i32* %3, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @client_send_announce_request(%struct.TYPE_7__* %77, i32 0, i32 %83, i32 %89, i32 %95, i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %76
  %105 = call i32 (...) @unix_time()
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = load i32, i32* %3, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i32 %105, i32* %110, align 4
  br label %111

111:                                              ; preds = %104, %76
  br label %112

112:                                              ; preds = %111, %66
  br label %113

113:                                              ; preds = %112, %38, %27
  %114 = load i32, i32* %3, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %13

116:                                              ; preds = %13
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @MAX_ONION_CLIENTS_ANNOUNCE, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %202

120:                                              ; preds = %116
  %121 = call i32 (...) @rand()
  %122 = urem i32 %121, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %124, %120
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MAX_PATH_NODES, align 4
  %134 = icmp ult i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  br label %141

139:                                              ; preds = %129
  %140 = load i32, i32* @MAX_PATH_NODES, align 4
  br label %141

141:                                              ; preds = %139, %135
  %142 = phi i32 [ %138, %135 ], [ %140, %139 ]
  store i32 %142, i32* %7, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  store %struct.TYPE_8__* %145, %struct.TYPE_8__** %8, align 8
  br label %163

146:                                              ; preds = %124
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @MAX_PATH_NODES, align 4
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  br label %158

156:                                              ; preds = %146
  %157 = load i32, i32* @MAX_PATH_NODES, align 4
  br label %158

158:                                              ; preds = %156, %152
  %159 = phi i32 [ %155, %152 ], [ %157, %156 ]
  store i32 %159, i32* %7, align 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  store %struct.TYPE_8__* %162, %struct.TYPE_8__** %8, align 8
  br label %163

163:                                              ; preds = %158, %141
  %164 = load i32, i32* %4, align 4
  %165 = call i32 (...) @rand()
  %166 = load i32, i32* @MAX_ONION_CLIENTS_ANNOUNCE, align 4
  %167 = urem i32 %165, %166
  %168 = icmp ult i32 %164, %167
  br i1 %168, label %169, label %201

169:                                              ; preds = %163
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %200

172:                                              ; preds = %169
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %196, %172
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* @MAX_ONION_CLIENTS_ANNOUNCE, align 4
  %176 = udiv i32 %175, 2
  %177 = icmp ult i32 %174, %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %173
  %179 = call i32 (...) @rand()
  %180 = load i32, i32* %7, align 4
  %181 = urem i32 %179, %180
  store i32 %181, i32* %9, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %184 = load i32, i32* %9, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %190 = load i32, i32* %9, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @client_send_announce_request(%struct.TYPE_7__* %182, i32 0, i32 %188, i32 %194, i32 0, i32 -1)
  br label %196

196:                                              ; preds = %178
  %197 = load i32, i32* %3, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %3, align 4
  br label %173

199:                                              ; preds = %173
  br label %200

200:                                              ; preds = %199, %169
  br label %201

201:                                              ; preds = %200, %163
  br label %202

202:                                              ; preds = %201, %116
  ret void
}

declare dso_local i64 @is_timeout(i32, i32) #1

declare dso_local i64 @path_exists(i32*, i32) #1

declare dso_local i64 @client_send_announce_request(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unix_time(...) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
