; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_random_nodes_path_onion.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_random_nodes_path_onion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32 }

@MAX_PATH_NODES = common dso_local global i32 0, align 4
@TCP_FAMILY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i32)* @random_nodes_path_onion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @random_nodes_path_onion(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %167

15:                                               ; preds = %3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAX_PATH_NODES, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  br label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @MAX_PATH_NODES, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %24, %21 ], [ %26, %25 ]
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @DHT_isconnected(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %167

38:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %58, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i64 %46
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = call i32 (...) @rand()
  %52 = load i32, i32* %9, align 4
  %53 = urem i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %54
  %56 = bitcast %struct.TYPE_12__* %47 to i8*
  %57 = bitcast %struct.TYPE_12__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %39

61:                                               ; preds = %39
  br label %165

62:                                               ; preds = %27
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @get_random_tcp_con_number(i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %167

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = icmp uge i32 %71, 2
  br i1 %72, label %73, label %110

73:                                               ; preds = %70
  %74 = load i8*, i8** @TCP_FAMILY, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  store i8* %74, i8** %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 8
  store i32 1, i32* %8, align 4
  br label %87

87:                                               ; preds = %106, %73
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 %94
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = call i32 (...) @rand()
  %100 = load i32, i32* %9, align 4
  %101 = urem i32 %99, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i64 %102
  %104 = bitcast %struct.TYPE_12__* %95 to i8*
  %105 = bitcast %struct.TYPE_12__* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 16, i1 false)
  br label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %8, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %87

109:                                              ; preds = %87
  br label %164

110:                                              ; preds = %70
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MAX_PATH_NODES, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  br label %122

120:                                              ; preds = %110
  %121 = load i32, i32* @MAX_PATH_NODES, align 4
  br label %122

122:                                              ; preds = %120, %116
  %123 = phi i32 [ %119, %116 ], [ %121, %120 ]
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %167

127:                                              ; preds = %122
  %128 = load i8*, i8** @TCP_FAMILY, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  store i8* %128, i8** %133, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  store i32 %134, i32* %140, align 8
  store i32 1, i32* %8, align 4
  br label %141

141:                                              ; preds = %160, %127
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %141
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %147 = load i32, i32* %8, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i64 %148
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = call i32 (...) @rand()
  %154 = load i32, i32* %11, align 4
  %155 = urem i32 %153, %154
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %156
  %158 = bitcast %struct.TYPE_12__* %149 to i8*
  %159 = bitcast %struct.TYPE_12__* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 16, i1 false)
  br label %160

160:                                              ; preds = %145
  %161 = load i32, i32* %8, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %141

163:                                              ; preds = %141
  br label %164

164:                                              ; preds = %163, %109
  br label %165

165:                                              ; preds = %164, %61
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %165, %126, %69, %37, %14
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i64 @DHT_isconnected(i32) #1

declare dso_local i32 @rand(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_random_tcp_con_number(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
