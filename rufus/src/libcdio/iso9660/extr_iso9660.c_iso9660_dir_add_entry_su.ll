; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_dir_add_entry_su.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_dir_add_entry_su.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i32* }
%struct.tm = type { i32 }

@ISO_BLOCKSIZE = common dso_local global i32 0, align 4
@MAX_ISOPATHNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iso9660_dir_add_entry_su(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.tm, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %17, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @from_733(i8* %31)
  store i32 %32, i32* %20, align 4
  %33 = call i32 @cdio_assert(i32 0)
  %34 = load i32, i32* %20, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ISO_BLOCKSIZE, align 4
  store i32 %42, i32* %20, align 4
  br label %43

43:                                               ; preds = %41, %36, %8
  %44 = load i32, i32* %20, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %49 = srem i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i1 [ false, %43 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @cdio_assert(i32 %54)
  %56 = load i8*, i8** %9, align 8
  %57 = icmp ne i8* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @cdio_assert(i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = icmp sgt i32 %60, 17
  %62 = zext i1 %61 to i32
  %63 = call i32 @cdio_assert(i32 %62)
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @cdio_assert(i32 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @MAX_ISOPATHNAME, align 8
  %72 = icmp sle i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @cdio_assert(i32 %73)
  store i32 64, i32* %21, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = load i32, i32* %21, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* %21, align 4
  %80 = call i32 @_cdio_ceil2block(i32 %79, i32 2)
  store i32 %80, i32* %21, align 4
  %81 = load i32, i32* %21, align 4
  store i32 %81, i32* %22, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %21, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %21, align 4
  %85 = load i32, i32* %21, align 4
  %86 = call i32 @_cdio_ceil2block(i32 %85, i32 2)
  store i32 %86, i32* %21, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %19, align 4
  br label %87

87:                                               ; preds = %101, %98, %52
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %20, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = load i32*, i32** %18, align 8
  %93 = load i32, i32* %19, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %19, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %19, align 4
  br label %87

101:                                              ; preds = %91
  %102 = load i32*, i32** %18, align 8
  %103 = load i32, i32* %19, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %19, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %19, align 4
  store i32 %109, i32* %24, align 4
  br label %87

110:                                              ; preds = %87
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %20, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @cdio_assert(i32 %114)
  %116 = load i32, i32* %24, align 4
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %120 = call i32 @_cdio_ofs_add(i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* %19, align 4
  %123 = sub i32 %122, %121
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %21, align 4
  %126 = add i32 %124, %125
  %127 = load i32, i32* %20, align 4
  %128 = icmp ule i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @cdio_assert(i32 %129)
  %131 = load i32*, i32** %18, align 8
  %132 = load i32, i32* %19, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = bitcast i32* %134 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %135, %struct.TYPE_5__** %17, align 8
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %21, align 4
  %138 = add i32 %136, %137
  %139 = load i32, i32* %20, align 4
  %140 = icmp ult i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @cdio_assert(i32 %141)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %144 = load i32, i32* %21, align 4
  %145 = call i32 @memset(%struct.TYPE_5__* %143, i32 0, i32 %144)
  %146 = load i32, i32* %21, align 4
  %147 = call i8* @to_711(i32 %146)
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 6
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i8* @to_733(i32 %150)
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 5
  store i8* %151, i8** %153, align 8
  %154 = load i32, i32* %12, align 4
  %155 = call i8* @to_733(i32 %154)
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 4
  store i8* %155, i8** %157, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = call i32 @gmtime_r(i32* %158, %struct.tm* %23)
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  %162 = call i32 @iso9660_set_dtime(%struct.tm* %23, i32* %161)
  %163 = load i32, i32* %13, align 4
  %164 = call i8* @to_711(i32 %163)
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  store i8* %164, i8** %166, align 8
  %167 = call i32 @to_723(i32 1)
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = call i32 @strlen(i8* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %110
  %174 = load i8*, i8** %10, align 8
  %175 = call i32 @strlen(i8* %174)
  br label %177

176:                                              ; preds = %110
  br label %177

177:                                              ; preds = %176, %173
  %178 = phi i32 [ %175, %173 ], [ 1, %176 ]
  %179 = call i8* @to_711(i32 %178)
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  store i8* %179, i8** %182, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i8*, i8** %10, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @from_711(i8* %192)
  %194 = call i32 @memcpy(i32* %187, i8* %188, i32 %193)
  %195 = load i32, i32* %15, align 4
  %196 = icmp ugt i32 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %177
  %198 = load i8*, i8** %14, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %211

200:                                              ; preds = %197
  %201 = load i32*, i32** %18, align 8
  %202 = load i32, i32* %19, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %22, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i8*, i8** %14, align 8
  %209 = load i32, i32* %15, align 4
  %210 = call i32 @memcpy(i32* %207, i8* %208, i32 %209)
  br label %211

211:                                              ; preds = %200, %197, %177
  ret void
}

declare dso_local i32 @from_733(i8*) #1

declare dso_local i32 @cdio_assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @_cdio_ceil2block(i32, i32) #1

declare dso_local i32 @_cdio_ofs_add(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @to_711(i32) #1

declare dso_local i8* @to_733(i32) #1

declare dso_local i32 @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @iso9660_set_dtime(%struct.tm*, i32*) #1

declare dso_local i32 @to_723(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @from_711(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
