; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_get_close_nodes_inner.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_get_close_nodes_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__, i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@MAX_SENT_NODES = common dso_local global i64 0, align 8
@BAD_NODE_TIMEOUT = common dso_local global i32 0, align 4
@HARDENING_ALL_OK = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, %struct.TYPE_9__*, i64, %struct.TYPE_11__*, i64, i64*, i64, i64)* @get_close_nodes_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_close_nodes_inner(i64* %0, %struct.TYPE_9__* %1, i64 %2, %struct.TYPE_11__* %3, i64 %4, i64* %5, i64 %6, i64 %7) #0 {
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  store i64* %0, i64** %9, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @AF_INET, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @AF_INET6, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %170

32:                                               ; preds = %28, %24, %8
  %33 = load i64*, i64** %14, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %35

35:                                               ; preds = %164, %32
  %36 = load i64, i64* %18, align 8
  %37 = load i64, i64* %13, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %167

39:                                               ; preds = %35
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %41 = load i64, i64* %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 %41
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %19, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = load i64, i64* @MAX_SENT_NODES, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @client_in_nodelist(%struct.TYPE_9__* %43, i64 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %164

51:                                               ; preds = %39
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %20, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @AF_INET, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %20, align 8
  br label %83

58:                                               ; preds = %51
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @AF_INET6, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %20, align 8
  br label %82

65:                                               ; preds = %58
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %69, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %20, align 8
  br label %81

78:                                               ; preds = %65
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %20, align 8
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %62
  br label %83

83:                                               ; preds = %82, %55
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %88 = call i64 @is_timeout(i64 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %164

91:                                               ; preds = %83
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @LAN_ip(i32 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i64, i64* %15, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  br label %164

102:                                              ; preds = %98, %91
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @LAN_ip(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %102
  %110 = load i64, i64* %16, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = call i64 @hardening_correct(i32* %114)
  %116 = load i64, i64* @HARDENING_ALL_OK, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load i64*, i64** %9, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @id_equal(i64* %119, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  br label %164

126:                                              ; preds = %118, %112, %109, %102
  %127 = load i64, i64* %17, align 8
  %128 = load i64, i64* @MAX_SENT_NODES, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %151

130:                                              ; preds = %126
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %132 = load i64, i64* %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %140 = call i32 @memcpy(i32 %135, i32 %138, i32 %139)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %142 = load i64, i64* %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = bitcast %struct.TYPE_12__* %144 to i8*
  %148 = bitcast %struct.TYPE_12__* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %147, i8* align 8 %148, i64 4, i1 false)
  %149 = load i64, i64* %17, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %17, align 8
  br label %163

151:                                              ; preds = %126
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %153 = load i64, i64* @MAX_SENT_NODES, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i64*, i64** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @add_to_list(%struct.TYPE_9__* %152, i64 %153, i32 %156, i32 %161, i64* %159)
  br label %163

163:                                              ; preds = %151, %130
  br label %164

164:                                              ; preds = %163, %125, %101, %90, %50
  %165 = load i64, i64* %18, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %18, align 8
  br label %35

167:                                              ; preds = %35
  %168 = load i64, i64* %17, align 8
  %169 = load i64*, i64** %14, align 8
  store i64 %168, i64* %169, align 8
  br label %170

170:                                              ; preds = %167, %31
  ret void
}

declare dso_local i64 @client_in_nodelist(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i64 @is_timeout(i64, i32) #1

declare dso_local i64 @LAN_ip(i32) #1

declare dso_local i64 @hardening_correct(i32*) #1

declare dso_local i32 @id_equal(i64*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @add_to_list(%struct.TYPE_9__*, i64, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
