; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_removal_status.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_removal_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32 }

@DSS_NONE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"remove: \00", align 1
@DSS_FINISHED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"Removal of vdev %llu copied %s in %lluh%um, completed on %s\00", align 1
@DSS_CANCELED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Removal of %s canceled on %s\00", align 1
@DSS_SCANNING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Evacuation of %s in progress since %s\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"    %s copied out of %s at %s/s, %.2f%% done\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c", %lluh%um to go\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c", (copy is slow, no estimated time)\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"    %s memory used for removed device mappings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @print_removal_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_removal_status(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [7 x i8], align 1
  %6 = alloca [7 x i8], align 1
  %7 = alloca [7 x i8], align 1
  %8 = alloca [7 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca [7 x i8], align 1
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = icmp eq %struct.TYPE_3__* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DSS_NONE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %2
  br label %213

34:                                               ; preds = %27
  %35 = load i32*, i32** %3, align 8
  %36 = call i32* @zpool_get_config(i32* %35, i32* null)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %39 = call i32* @fnvlist_lookup_nvlist(i32* %37, i32 %38)
  store i32* %39, i32** %12, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %42 = call i64 @nvlist_lookup_nvlist_array(i32* %40, i32 %41, i32*** %13, i32* %14)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @verify(i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* @g_zfs, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = load i32**, i32*** %13, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %55, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @B_TRUE, align 4
  %63 = call i8* @zpool_vdev_name(i32 %53, i32* %54, i32* %61, i32 %62)
  store i8* %63, i8** %15, align 8
  %64 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %65 = call i32 (i8*, ...) @printf(i8* %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %10, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %76 = call i32 @zfs_nicenum(i32 %74, i8* %75, i32 7)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DSS_FINISHED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %34
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sdiv i32 %85, 60
  store i32 %86, i32* %16, align 4
  %87 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %92 = load i32, i32* %16, align 4
  %93 = sdiv i32 %92, 60
  %94 = load i32, i32* %16, align 4
  %95 = srem i32 %94, 60
  %96 = call i8* @ctime(i32* %10)
  %97 = call i32 (i8*, ...) @printf(i8* %87, i32 %90, i8* %91, i32 %93, i32 %95, i8* %96)
  br label %199

98:                                               ; preds = %34
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DSS_CANCELED, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i8*, i8** %15, align 8
  %107 = call i8* @ctime(i32* %10)
  %108 = call i32 (i8*, ...) @printf(i8* %105, i8* %106, i8* %107)
  br label %198

109:                                              ; preds = %98
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DSS_SCANNING, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i8*, i8** %15, align 8
  %119 = call i8* @ctime(i32* %9)
  %120 = call i32 (i8*, ...) @printf(i8* %117, i8* %118, i8* %119)
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %109
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  br label %130

129:                                              ; preds = %109
  br label %130

130:                                              ; preds = %129, %125
  %131 = phi i32 [ %128, %125 ], [ 1, %129 ]
  store i32 %131, i32* %17, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* %17, align 4
  %136 = sitofp i32 %135 to double
  %137 = load i32, i32* %18, align 4
  %138 = sitofp i32 %137 to double
  %139 = fdiv double %136, %138
  store double %139, double* %22, align 8
  %140 = call i32 @time(i32* null)
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %140, %143
  store i32 %144, i32* %19, align 4
  %145 = load i32, i32* %19, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %130
  %148 = load i32, i32* %19, align 4
  br label %150

149:                                              ; preds = %130
  br label %150

150:                                              ; preds = %149, %147
  %151 = phi i32 [ %148, %147 ], [ 1, %149 ]
  store i32 %151, i32* %19, align 4
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %19, align 4
  %154 = sdiv i32 %152, %153
  store i32 %154, i32* %23, align 4
  %155 = load i32, i32* %23, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i32, i32* %23, align 4
  br label %160

159:                                              ; preds = %150
  br label %160

160:                                              ; preds = %159, %157
  %161 = phi i32 [ %158, %157 ], [ 1, %159 ]
  store i32 %161, i32* %23, align 4
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %17, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load i32, i32* %23, align 4
  %166 = sdiv i32 %164, %165
  %167 = sdiv i32 %166, 60
  store i32 %167, i32* %20, align 4
  %168 = load i32, i32* %20, align 4
  %169 = sdiv i32 %168, 60
  store i32 %169, i32* %21, align 4
  %170 = load i32, i32* %17, align 4
  %171 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %172 = call i32 @zfs_nicenum(i32 %170, i8* %171, i32 7)
  %173 = load i32, i32* %18, align 4
  %174 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %175 = call i32 @zfs_nicenum(i32 %173, i8* %174, i32 7)
  %176 = load i32, i32* %23, align 4
  %177 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %178 = call i32 @zfs_nicenum(i32 %176, i8* %177, i32 7)
  %179 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %180 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %181 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %182 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %183 = load double, double* %22, align 8
  %184 = fmul double 1.000000e+02, %183
  %185 = call i32 (i8*, ...) @printf(i8* %179, i8* %180, i8* %181, i8* %182, double %184)
  %186 = load i32, i32* %21, align 4
  %187 = icmp slt i32 %186, 720
  br i1 %187, label %188, label %194

188:                                              ; preds = %160
  %189 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %20, align 4
  %192 = srem i32 %191, 60
  %193 = call i32 (i8*, ...) @printf(i8* %189, i32 %190, i32 %192)
  br label %197

194:                                              ; preds = %160
  %195 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %196 = call i32 (i8*, ...) @printf(i8* %195)
  br label %197

197:                                              ; preds = %194, %188
  br label %198

198:                                              ; preds = %197, %104
  br label %199

199:                                              ; preds = %198, %82
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %199
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds [7 x i8], [7 x i8]* %24, i64 0, i64 0
  %209 = call i32 @zfs_nicenum(i32 %207, i8* %208, i32 7)
  %210 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %211 = getelementptr inbounds [7 x i8], [7 x i8]* %24, i64 0, i64 0
  %212 = call i32 (i8*, ...) @printf(i8* %210, i8* %211)
  br label %213

213:                                              ; preds = %33, %204, %199
  ret void
}

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @zpool_vdev_name(i32, i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @zfs_nicenum(i32, i8*, i32) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
