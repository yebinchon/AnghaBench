; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_check_replication.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_check_replication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }

@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [118 x i8] c"mismatched replication level: pool and new vdev with different redundancy, %s and %s vdevs, %llu vs. %llu (%llu-way)\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"mismatched replication level: pool uses %s and new vdev is %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"mismatched replication level: pool uses %llu device parity and new vdev uses %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"mismatched replication level: pool uses %llu-way %s and new vdev uses %llu-way %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @check_replication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_replication(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %19 = call i64 @nvlist_lookup_nvlist(i32* %17, i32 %18, i32** %13)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @verify(i32 %21)
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* @B_FALSE, align 4
  %25 = call %struct.TYPE_8__* @get_replication(i32* %23, i32 %24)
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %8, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %178

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %32 = call i64 @nvlist_lookup_nvlist_array(i32* %30, i32 %31, i32*** %6, i64* %7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %29
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = call i32 @free(%struct.TYPE_8__* %38)
  store i32 0, i32* %3, align 4
  br label %178

40:                                               ; preds = %34
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @num_logs(i32* %41)
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = call i32 @free(%struct.TYPE_8__* %46)
  store i32 0, i32* %3, align 4
  br label %178

48:                                               ; preds = %40
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @B_TRUE, align 4
  %51 = call %struct.TYPE_8__* @get_replication(i32* %49, i32 %50)
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %9, align 8
  %52 = icmp eq %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = call i32 @free(%struct.TYPE_8__* %54)
  store i32 -1, i32* %3, align 4
  br label %178

56:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = icmp ne %struct.TYPE_8__* %57, null
  br i1 %58, label %59, label %168

59:                                               ; preds = %56
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = call i64 @is_raidz_mirror(%struct.TYPE_8__* %60, %struct.TYPE_8__* %61, %struct.TYPE_8__** %10, %struct.TYPE_8__** %11)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = call i64 @is_raidz_mirror(%struct.TYPE_8__* %65, %struct.TYPE_8__* %66, %struct.TYPE_8__** %10, %struct.TYPE_8__** %11)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %64, %59
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = icmp ne i32 %72, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %69
  %79 = call i32 @gettext(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i64, i64, ...) @vdev_error(i32 %79, i64 %83, i64 %87, i32 %90, i32 %94, i32 %97)
  store i32 -1, i32* %12, align 4
  br label %99

99:                                               ; preds = %78, %69
  br label %167

100:                                              ; preds = %64
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @strcmp(i32 %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %100
  %110 = call i32 @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = call i32 (i32, i64, i64, ...) @vdev_error(i32 %110, i64 %114, i64 %118)
  store i32 -1, i32* %12, align 4
  br label %166

120:                                              ; preds = %100
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %120
  %129 = call i32 @gettext(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0))
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = call i32 (i32, i64, i64, ...) @vdev_error(i32 %129, i64 %133, i64 %137)
  store i32 -1, i32* %12, align 4
  br label %165

139:                                              ; preds = %120
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %142, %145
  br i1 %146, label %147, label %164

147:                                              ; preds = %139
  %148 = call i32 @gettext(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i64, i64, ...) @vdev_error(i32 %148, i64 %152, i64 %156, i32 %159, i32 %162)
  store i32 -1, i32* %12, align 4
  br label %164

164:                                              ; preds = %147, %139
  br label %165

165:                                              ; preds = %164, %128
  br label %166

166:                                              ; preds = %165, %109
  br label %167

167:                                              ; preds = %166, %99
  br label %168

168:                                              ; preds = %167, %56
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %170 = call i32 @free(%struct.TYPE_8__* %169)
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %172 = icmp ne %struct.TYPE_8__* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %175 = call i32 @free(%struct.TYPE_8__* %174)
  br label %176

176:                                              ; preds = %173, %168
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %53, %45, %37, %27
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local %struct.TYPE_8__* @get_replication(i32*, i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @num_logs(i32*) #1

declare dso_local i64 @is_raidz_mirror(%struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__**, %struct.TYPE_8__**) #1

declare dso_local i32 @vdev_error(i32, i64, i64, ...) #1

declare dso_local i32 @gettext(i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
