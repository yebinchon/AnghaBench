; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_link_create.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_link_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }

@ZRENAMING = common dso_local global i32 0, align 4
@ZNEW = common dso_local global i32 0, align 4
@ZEXISTS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@STATE_CHANGED = common dso_local global i32 0, align 4
@CONTENT_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_link_create(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [5 x i32], align 16
  %15 = alloca [2 x i32], align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %10, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %24 = call %struct.TYPE_21__* @ZTOZSB(%struct.TYPE_20__* %23)
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %11, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %26 = call %struct.TYPE_23__* @ZTOI(%struct.TYPE_20__* %25)
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @S_ISDIR(i32 %28)
  store i32 %29, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = call i32 @mutex_enter(i32* %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ZRENAMING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %76, label %37

37:                                               ; preds = %4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @ZNEW, align 4
  %45 = load i32, i32* @ZEXISTS, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = call i32 @mutex_exit(i32* %53)
  %55 = load i32, i32* @ENOENT, align 4
  %56 = call i32 @SET_ERROR(i32 %55)
  store i32 %56, i32* %5, align 4
  br label %229

57:                                               ; preds = %37
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @ZNEW, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %64 = call %struct.TYPE_23__* @ZTOI(%struct.TYPE_20__* %63)
  %65 = call i32 @inc_nlink(%struct.TYPE_23__* %64)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %67 = call %struct.TYPE_23__* @ZTOI(%struct.TYPE_20__* %66)
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %17, align 4
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %71 = load i32, i32* %18, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %73 = call i32 @SA_ZPL_LINKS(%struct.TYPE_21__* %72)
  %74 = call i32 @SA_ADD_BULK_ATTR(i32* %70, i32 %71, i32 %73, i32* null, i32* %17, i32 4)
  br label %75

75:                                               ; preds = %62, %57
  br label %76

76:                                               ; preds = %75, %4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @zfs_dirent(%struct.TYPE_20__* %77, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %83 = call %struct.TYPE_21__* @ZTOZSB(%struct.TYPE_20__* %82)
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @zap_add(i32 %85, i32 %88, i32 %91, i32 8, i32 1, i32* %12, i32* %92)
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %19, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %76
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @ZRENAMING, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @ZNEW, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %108 = call %struct.TYPE_23__* @ZTOI(%struct.TYPE_20__* %107)
  %109 = call i32 @drop_nlink(%struct.TYPE_23__* %108)
  br label %110

110:                                              ; preds = %106, %101, %96
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = call i32 @mutex_exit(i32* %112)
  %114 = load i32, i32* %19, align 4
  store i32 %114, i32* %5, align 4
  br label %229

115:                                              ; preds = %76
  %116 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %117 = load i32, i32* %18, align 4
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %119 = call i32 @SA_ZPL_PARENT(%struct.TYPE_21__* %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 4
  %122 = call i32 @SA_ADD_BULK_ATTR(i32* %116, i32 %117, i32 %119, i32* null, i32* %121, i32 4)
  %123 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %124 = load i32, i32* %18, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %126 = call i32 @SA_ZPL_FLAGS(%struct.TYPE_21__* %125)
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 2
  %129 = call i32 @SA_ADD_BULK_ATTR(i32* %123, i32 %124, i32 %126, i32* null, i32* %128, i32 4)
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @ZNEW, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %115
  %135 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %136 = load i32, i32* %18, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %138 = call i32 @SA_ZPL_CTIME(%struct.TYPE_21__* %137)
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %140 = call i32 @SA_ADD_BULK_ATTR(i32* %135, i32 %136, i32 %138, i32* null, i32* %139, i32 8)
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %142 = load i32, i32* @STATE_CHANGED, align 4
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %145 = call i32 @zfs_tstamp_update_setup(%struct.TYPE_20__* %141, i32 %142, i32* %143, i32* %144)
  br label %146

146:                                              ; preds = %134, %115
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %151 = load i32, i32* %18, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = call i32 @sa_bulk_update(i32 %149, i32* %150, i32 %151, i32* %152)
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* %19, align 4
  %155 = icmp eq i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @ASSERT(i32 %156)
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = call i32 @mutex_exit(i32* %159)
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = call i32 @mutex_enter(i32* %162)
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %146
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %172 = call %struct.TYPE_23__* @ZTOI(%struct.TYPE_20__* %171)
  %173 = call i32 @inc_nlink(%struct.TYPE_23__* %172)
  br label %174

174:                                              ; preds = %170, %146
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %176 = call %struct.TYPE_23__* @ZTOI(%struct.TYPE_20__* %175)
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %179 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %180 = load i32, i32* %18, align 4
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %182 = call i32 @SA_ZPL_SIZE(%struct.TYPE_21__* %181)
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 3
  %185 = call i32 @SA_ADD_BULK_ATTR(i32* %179, i32 %180, i32 %182, i32* null, i32* %184, i32 4)
  %186 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %187 = load i32, i32* %18, align 4
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %189 = call i32 @SA_ZPL_LINKS(%struct.TYPE_21__* %188)
  %190 = call i32 @SA_ADD_BULK_ATTR(i32* %186, i32 %187, i32 %189, i32* null, i32* %17, i32 4)
  %191 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %192 = load i32, i32* %18, align 4
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %194 = call i32 @SA_ZPL_MTIME(%struct.TYPE_21__* %193)
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %196 = call i32 @SA_ADD_BULK_ATTR(i32* %191, i32 %192, i32 %194, i32* null, i32* %195, i32 8)
  %197 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %198 = load i32, i32* %18, align 4
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %200 = call i32 @SA_ZPL_CTIME(%struct.TYPE_21__* %199)
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %202 = call i32 @SA_ADD_BULK_ATTR(i32* %197, i32 %198, i32 %200, i32* null, i32* %201, i32 8)
  %203 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %204 = load i32, i32* %18, align 4
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %206 = call i32 @SA_ZPL_FLAGS(%struct.TYPE_21__* %205)
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 2
  %209 = call i32 @SA_ADD_BULK_ATTR(i32* %203, i32 %204, i32 %206, i32* null, i32* %208, i32 4)
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %211 = load i32, i32* @CONTENT_MODIFIED, align 4
  %212 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %214 = call i32 @zfs_tstamp_update_setup(%struct.TYPE_20__* %210, i32 %211, i32* %212, i32* %213)
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %219 = load i32, i32* %18, align 4
  %220 = load i32*, i32** %8, align 8
  %221 = call i32 @sa_bulk_update(i32 %217, i32* %218, i32 %219, i32* %220)
  store i32 %221, i32* %19, align 4
  %222 = load i32, i32* %19, align 4
  %223 = icmp eq i32 %222, 0
  %224 = zext i1 %223 to i32
  %225 = call i32 @ASSERT(i32 %224)
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = call i32 @mutex_exit(i32* %227)
  store i32 0, i32* %5, align 4
  br label %229

229:                                              ; preds = %174, %110, %42
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local %struct.TYPE_21__* @ZTOZSB(%struct.TYPE_20__*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_23__* @ZTOI(%struct.TYPE_20__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @inc_nlink(%struct.TYPE_23__*) #1

declare dso_local i32 @SA_ADD_BULK_ATTR(i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @SA_ZPL_LINKS(%struct.TYPE_21__*) #1

declare dso_local i32 @zfs_dirent(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @zap_add(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @drop_nlink(%struct.TYPE_23__*) #1

declare dso_local i32 @SA_ZPL_PARENT(%struct.TYPE_21__*) #1

declare dso_local i32 @SA_ZPL_FLAGS(%struct.TYPE_21__*) #1

declare dso_local i32 @SA_ZPL_CTIME(%struct.TYPE_21__*) #1

declare dso_local i32 @zfs_tstamp_update_setup(%struct.TYPE_20__*, i32, i32*, i32*) #1

declare dso_local i32 @sa_bulk_update(i32, i32*, i32, i32*) #1

declare dso_local i32 @SA_ZPL_SIZE(%struct.TYPE_21__*) #1

declare dso_local i32 @SA_ZPL_MTIME(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
