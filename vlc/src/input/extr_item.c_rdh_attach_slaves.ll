; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_rdh_attach_slaves.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_rdh_attach_slaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_readdir_helper = type { i64, i64, %struct.rdh_slave** }
%struct.rdh_slave = type { %struct.TYPE_12__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_11__**, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@SLAVE_PRIORITY_MATCH_ALL = common dso_local global i64 0, align 8
@SLAVE_TYPE_SPU = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_readdir_helper*, %struct.TYPE_11__*)* @rdh_attach_slaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdh_attach_slaves(%struct.vlc_readdir_helper* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.vlc_readdir_helper*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.rdh_slave*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.vlc_readdir_helper* %0, %struct.vlc_readdir_helper** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %3, align 8
  %15 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %180

19:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %158, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %161

26:                                               ; preds = %20
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %29, i64 %31
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %6, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %7, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @input_item_IsMaster(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %26
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @input_item_slave_GetType(i32 %45, i32* %8)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %26
  br label %158

49:                                               ; preds = %42
  store i64 0, i64* %9, align 8
  br label %50

50:                                               ; preds = %154, %49
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %3, align 8
  %53 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %157

56:                                               ; preds = %50
  %57 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %3, align 8
  %58 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %57, i32 0, i32 2
  %59 = load %struct.rdh_slave**, %struct.rdh_slave*** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.rdh_slave*, %struct.rdh_slave** %59, i64 %60
  %62 = load %struct.rdh_slave*, %struct.rdh_slave** %61, align 8
  store %struct.rdh_slave* %62, %struct.rdh_slave** %10, align 8
  %63 = load %struct.rdh_slave*, %struct.rdh_slave** %10, align 8
  %64 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = icmp eq %struct.TYPE_11__* %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %56
  %69 = load %struct.rdh_slave*, %struct.rdh_slave** %10, align 8
  %70 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SLAVE_PRIORITY_MATCH_ALL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68, %56
  br label %154

77:                                               ; preds = %68
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %79 = load %struct.rdh_slave*, %struct.rdh_slave** %10, align 8
  %80 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load %struct.rdh_slave*, %struct.rdh_slave** %10, align 8
  %83 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @rdh_get_slave_priority(%struct.TYPE_10__* %78, %struct.TYPE_12__* %81, i32 %84)
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %3, align 8
  %88 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  br label %154

92:                                               ; preds = %77
  %93 = load %struct.rdh_slave*, %struct.rdh_slave** %10, align 8
  %94 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SLAVE_TYPE_SPU, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %3, align 8
  %102 = load %struct.rdh_slave*, %struct.rdh_slave** %10, align 8
  %103 = call i64 @rdh_should_match_idx(%struct.vlc_readdir_helper* %101, %struct.rdh_slave* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %154

106:                                              ; preds = %100, %92
  %107 = load %struct.rdh_slave*, %struct.rdh_slave** %10, align 8
  %108 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %107, i32 0, i32 0
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.rdh_slave*, %struct.rdh_slave** %10, align 8
  %113 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %11, align 8
  %118 = call i32* @input_item_slave_New(i32 %111, i64 %116, i64 %117)
  store i32* %118, i32** %12, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %106
  br label %157

122:                                              ; preds = %106
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = call i64 @input_item_AddSlave(%struct.TYPE_10__* %123, i32* %124)
  %126 = load i64, i64* @VLC_SUCCESS, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 @input_item_slave_Delete(i32* %129)
  br label %157

131:                                              ; preds = %122
  %132 = load %struct.rdh_slave*, %struct.rdh_slave** %10, align 8
  %133 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %132, i32 0, i32 1
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = icmp ne %struct.TYPE_11__* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %131
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = load %struct.rdh_slave*, %struct.rdh_slave** %10, align 8
  %139 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %138, i32 0, i32 1
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = call i32 @input_item_node_RemoveNode(%struct.TYPE_11__* %137, %struct.TYPE_11__* %140)
  %142 = load %struct.rdh_slave*, %struct.rdh_slave** %10, align 8
  %143 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %142, i32 0, i32 1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = call i32 @input_item_node_Delete(%struct.TYPE_11__* %144)
  %146 = load %struct.rdh_slave*, %struct.rdh_slave** %10, align 8
  %147 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %146, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %147, align 8
  br label %148

148:                                              ; preds = %136, %131
  %149 = load i64, i64* %11, align 8
  %150 = load %struct.rdh_slave*, %struct.rdh_slave** %10, align 8
  %151 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %150, i32 0, i32 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  store i64 %149, i64* %153, align 8
  br label %154

154:                                              ; preds = %148, %105, %91, %76
  %155 = load i64, i64* %9, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %9, align 8
  br label %50

157:                                              ; preds = %128, %121, %50
  br label %158

158:                                              ; preds = %157, %48
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %5, align 4
  br label %20

161:                                              ; preds = %20
  store i32 0, i32* %13, align 4
  br label %162

162:                                              ; preds = %177, %161
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %162
  %169 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %3, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %172, i64 %174
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  call void @rdh_attach_slaves(%struct.vlc_readdir_helper* %169, %struct.TYPE_11__* %176)
  br label %177

177:                                              ; preds = %168
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %162

180:                                              ; preds = %18, %162
  ret void
}

declare dso_local i32 @input_item_IsMaster(i32) #1

declare dso_local i64 @input_item_slave_GetType(i32, i32*) #1

declare dso_local i64 @rdh_get_slave_priority(%struct.TYPE_10__*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @rdh_should_match_idx(%struct.vlc_readdir_helper*, %struct.rdh_slave*) #1

declare dso_local i32* @input_item_slave_New(i32, i64, i64) #1

declare dso_local i64 @input_item_AddSlave(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @input_item_slave_Delete(i32*) #1

declare dso_local i32 @input_item_node_RemoveNode(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @input_item_node_Delete(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
