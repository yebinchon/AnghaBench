; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso_have_rr_traverse.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso_have_rr_traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i32*, %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i32 }

@nope = common dso_local global i32 0, align 4
@_STAT_FILE = common dso_local global i64 0, align 8
@dunno = common dso_local global i32 0, align 4
@_STAT_DIR = common dso_local global i64 0, align 8
@ISO_BLOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't calloc(1, %d)\00", align 1
@yep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i8**, i64*)* @iso_have_rr_traverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso_have_rr_traverse(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  %17 = load i32, i32* @nope, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i8**, i8*** %8, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %190

23:                                               ; preds = %4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @_STAT_FILE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @nope, align 4
  store i32 %30, i32* %5, align 4
  br label %190

31:                                               ; preds = %23
  %32 = load i64*, i64** %9, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @dunno, align 4
  store i32 %36, i32* %5, align 4
  br label %190

37:                                               ; preds = %31
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @_STAT_DIR, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @cdio_assert(i32 %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %51 = mul nsw i32 %49, %50
  %52 = call %struct.TYPE_13__* @calloc(i32 1, i32 %51)
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %11, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %54 = icmp ne %struct.TYPE_13__* %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %37
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %62 = mul nsw i32 %60, %61
  %63 = call i32 @cdio_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @dunno, align 4
  store i32 %64, i32* %5, align 4
  br label %190

65:                                               ; preds = %37
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @iso9660_iso_seek_read(%struct.TYPE_14__* %66, %struct.TYPE_13__* %67, i32 %72, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %80, %85
  %87 = icmp ne i32 %79, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %65
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %90 = call i32 @free(%struct.TYPE_13__* %89)
  store i32 0, i32* %5, align 4
  br label %190

91:                                               ; preds = %65
  br label %92

92:                                               ; preds = %174, %112, %91
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %100 = mul nsw i32 %98, %99
  %101 = icmp ult i32 %93, %100
  br i1 %101, label %102, label %175

102:                                              ; preds = %92
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %104 = load i32, i32* %10, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i64 %105
  %107 = bitcast %struct.TYPE_13__* %106 to i8*
  %108 = bitcast i8* %107 to i32*
  store i32* %108, i32** %14, align 8
  store i32 1, i32* %16, align 4
  %109 = load i32*, i32** %14, align 8
  %110 = call i64 @iso9660_check_dir_block_end(i32* %109, i32* %10)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %92

113:                                              ; preds = %102
  %114 = load i32*, i32** %14, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.TYPE_13__* @_iso9660_dir_to_statbuf(i32* %114, i32* null, i32 %117, i32 %120)
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %15, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @yep, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %113
  %130 = load i8**, i8*** %8, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @strlen(i8* %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i32 0, i32* %13, align 4
  br label %145

136:                                              ; preds = %129
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %139 = load i8**, i8*** %8, align 8
  %140 = load i32, i32* %16, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i64*, i64** %9, align 8
  %144 = call i32 @iso_have_rr_traverse(%struct.TYPE_14__* %137, %struct.TYPE_13__* %138, i8** %142, i64* %143)
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %136, %135
  br label %146

146:                                              ; preds = %145, %113
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %148 = call i32 @free(%struct.TYPE_13__* %147)
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @nope, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %154 = call i32 @free(%struct.TYPE_13__* %153)
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %5, align 4
  br label %190

156:                                              ; preds = %146
  %157 = load i32*, i32** %14, align 8
  %158 = call i64 @iso9660_get_dir_len(i32* %157)
  %159 = load i32, i32* %10, align 4
  %160 = zext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %10, align 4
  %163 = load i64*, i64** %9, align 8
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %164, 1
  %166 = load i64*, i64** %9, align 8
  store i64 %165, i64* %166, align 8
  %167 = load i64*, i64** %9, align 8
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %156
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %172 = call i32 @free(%struct.TYPE_13__* %171)
  %173 = load i32, i32* @dunno, align 4
  store i32 %173, i32* %5, align 4
  br label %190

174:                                              ; preds = %156
  br label %92

175:                                              ; preds = %92
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %183 = mul nsw i32 %181, %182
  %184 = icmp eq i32 %176, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @cdio_assert(i32 %185)
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %188 = call i32 @free(%struct.TYPE_13__* %187)
  %189 = load i32, i32* @nope, align 4
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %175, %170, %152, %88, %55, %35, %29, %22
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @cdio_assert(i32) #1

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #1

declare dso_local i32 @cdio_warn(i8*, i32) #1

declare dso_local i32 @iso9660_iso_seek_read(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i64 @iso9660_check_dir_block_end(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @_iso9660_dir_to_statbuf(i32*, i32*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @iso9660_get_dir_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
