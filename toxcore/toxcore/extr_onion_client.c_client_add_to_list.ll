; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_client_add_to_list.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_client_add_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i32*, i32*, i32*, i32, i32, i64, i32, i32 }

@MAX_ONION_CLIENTS_ANNOUNCE = common dso_local global i32 0, align 4
@MAX_ONION_CLIENTS = common dso_local global i32 0, align 4
@cmp_public_key = common dso_local global i32* null, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@cmp_entry = common dso_local global i32 0, align 4
@ONION_NODE_TIMEOUT = common dso_local global i32 0, align 4
@ONION_PING_ID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32*, i32, i32, i32*, i32)* @client_add_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_add_to_list(%struct.TYPE_12__* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %200

28:                                               ; preds = %7
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %16, align 8
  store i32* null, i32** %17, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %16, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %17, align 8
  %40 = load i32, i32* @MAX_ONION_CLIENTS_ANNOUNCE, align 4
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %51

43:                                               ; preds = %31
  %44 = load i32*, i32** %14, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @public_key_cmp(i32* %44, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %50, %43, %31
  br label %76

52:                                               ; preds = %28
  %53 = load i32, i32* %13, align 4
  %54 = icmp sge i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 -1, i32* %8, align 4
  br label %200

56:                                               ; preds = %52
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %16, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %17, align 8
  %75 = load i32, i32* @MAX_ONION_CLIENTS, align 4
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %56, %51
  %77 = load i32*, i32** @cmp_public_key, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %80 = call i32 @memcpy(i32* %77, i32* %78, i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* @cmp_entry, align 4
  %84 = call i32 @qsort(%struct.TYPE_11__* %81, i32 %82, i32 48, i32 %83)
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ONION_NODE_TIMEOUT, align 4
  %90 = call i64 @is_timeout(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %76
  %93 = load i32*, i32** %17, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 @id_closest(i32* %93, i32* %97, i32* %98)
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %102

101:                                              ; preds = %92, %76
  store i32 0, i32* %19, align 4
  br label %102

102:                                              ; preds = %101, %92
  store i32 0, i32* %21, align 4
  br label %103

103:                                              ; preds = %120, %102
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %103
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %109 = load i32, i32* %21, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = call i64 @public_key_cmp(i32* %113, i32* %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = load i32, i32* %21, align 4
  store i32 %118, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %123

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %21, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %21, align 4
  br label %103

123:                                              ; preds = %117, %103
  %124 = load i32, i32* %19, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %200

127:                                              ; preds = %123
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %136 = call i32 @memcpy(i32* %133, i32* %134, i32 %135)
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 7
  store i32 %137, i32* %142, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 @onion_add_path_node(%struct.TYPE_12__* %143, i32 %144, i32* %145)
  %147 = load i32, i32* %13, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %159

149:                                              ; preds = %127
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %151 = load i32, i32* %19, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32*, i32** %14, align 8
  %157 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %158 = call i32 @memcpy(i32* %155, i32* %156, i32 %157)
  br label %169

159:                                              ; preds = %127
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i32*, i32** %14, align 8
  %167 = load i32, i32* @ONION_PING_ID_SIZE, align 4
  %168 = call i32 @memcpy(i32* %165, i32* %166, i32 %167)
  br label %169

169:                                              ; preds = %159, %149
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 3
  store i32 %170, i32* %175, align 8
  %176 = call i32 (...) @unix_time()
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %178 = load i32, i32* %19, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 6
  store i32 %176, i32* %181, align 8
  %182 = load i32, i32* %20, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %169
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 5
  store i64 0, i64* %189, align 8
  br label %190

190:                                              ; preds = %184, %169
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %15, align 4
  %194 = call i32 @set_path_timeouts(%struct.TYPE_12__* %191, i32 %192, i32 %193)
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %196 = load i32, i32* %19, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 4
  store i32 %194, i32* %199, align 4
  store i32 0, i32* %8, align 4
  br label %200

200:                                              ; preds = %190, %126, %55, %27
  %201 = load i32, i32* %8, align 4
  ret i32 %201
}

declare dso_local i64 @public_key_cmp(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i64 @is_timeout(i32, i32) #1

declare dso_local i32 @id_closest(i32*, i32*, i32*) #1

declare dso_local i32 @onion_add_path_node(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @unix_time(...) #1

declare dso_local i32 @set_path_timeouts(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
