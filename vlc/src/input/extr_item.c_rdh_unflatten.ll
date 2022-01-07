; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_rdh_unflatten.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_rdh_unflatten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_readdir_helper = type { i64, %struct.rdh_dir** }
%struct.rdh_dir = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@INPUT_ITEM_URI_NOP = common dso_local global i32 0, align 4
@INPUT_DURATION_UNSET = common dso_local global i32 0, align 4
@ITEM_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_readdir_helper*, %struct.TYPE_5__**, i8*, i32)* @rdh_unflatten to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdh_unflatten(%struct.vlc_readdir_helper* %0, %struct.TYPE_5__** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_readdir_helper*, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rdh_dir*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.rdh_dir*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store %struct.vlc_readdir_helper* %0, %struct.vlc_readdir_helper** %6, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %10, align 8
  br label %23

23:                                               ; preds = %158, %4
  %24 = load i8*, i8** %10, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 47)
  store i8* %25, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %161

27:                                               ; preds = %23
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %63, %27
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %6, align 8
  %31 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = icmp eq %struct.TYPE_5__* %35, null
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i1 [ false, %28 ], [ %36, %34 ]
  br i1 %38, label %39, label %66

39:                                               ; preds = %37
  %40 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %6, align 8
  %41 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %40, i32 0, i32 1
  %42 = load %struct.rdh_dir**, %struct.rdh_dir*** %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds %struct.rdh_dir*, %struct.rdh_dir** %42, i64 %43
  %45 = load %struct.rdh_dir*, %struct.rdh_dir** %44, align 8
  store %struct.rdh_dir* %45, %struct.rdh_dir** %13, align 8
  %46 = load %struct.rdh_dir*, %struct.rdh_dir** %13, align 8
  %47 = getelementptr inbounds %struct.rdh_dir, %struct.rdh_dir* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @strncmp(i8* %48, i8* %49, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %39
  %59 = load %struct.rdh_dir*, %struct.rdh_dir** %13, align 8
  %60 = getelementptr inbounds %struct.rdh_dir, %struct.rdh_dir* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %11, align 8
  br label %62

62:                                               ; preds = %58, %39
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %12, align 8
  br label %28

66:                                               ; preds = %37
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %68 = icmp eq %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %155

69:                                               ; preds = %66
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = add i64 17, %75
  %77 = trunc i64 %76 to i32
  %78 = call %struct.rdh_dir* @malloc(i32 %77)
  store %struct.rdh_dir* %78, %struct.rdh_dir** %15, align 8
  %79 = load %struct.rdh_dir*, %struct.rdh_dir** %15, align 8
  %80 = icmp eq %struct.rdh_dir* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %82, i32* %5, align 4
  br label %163

83:                                               ; preds = %69
  %84 = load %struct.rdh_dir*, %struct.rdh_dir** %15, align 8
  %85 = getelementptr inbounds %struct.rdh_dir, %struct.rdh_dir* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i64, i64* %14, align 8
  %89 = call i32 @strncpy(i8* %86, i8* %87, i64 %88)
  %90 = load %struct.rdh_dir*, %struct.rdh_dir** %15, align 8
  %91 = getelementptr inbounds %struct.rdh_dir, %struct.rdh_dir* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* %14, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8 0, i8* %94, align 1
  %95 = load %struct.rdh_dir*, %struct.rdh_dir** %15, align 8
  %96 = getelementptr inbounds %struct.rdh_dir, %struct.rdh_dir* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @strrchr(i8* %97, i8 signext 47)
  store i8* %98, i8** %16, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %83
  %102 = load i8*, i8** %16, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %16, align 8
  br label %108

104:                                              ; preds = %83
  %105 = load %struct.rdh_dir*, %struct.rdh_dir** %15, align 8
  %106 = getelementptr inbounds %struct.rdh_dir, %struct.rdh_dir* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %16, align 8
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* @INPUT_ITEM_URI_NOP, align 4
  %110 = load i8*, i8** %16, align 8
  %111 = load i32, i32* @INPUT_DURATION_UNSET, align 4
  %112 = load i32, i32* @ITEM_TYPE_DIRECTORY, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32* @input_item_NewExt(i32 %109, i8* %110, i32 %111, i32 %112, i32 %113)
  store i32* %114, i32** %17, align 8
  %115 = load i32*, i32** %17, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load %struct.rdh_dir*, %struct.rdh_dir** %15, align 8
  %119 = call i32 @free(%struct.rdh_dir* %118)
  %120 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %120, i32* %5, align 4
  br label %163

121:                                              ; preds = %108
  %122 = load i32*, i32** %17, align 8
  %123 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @input_item_CopyOptions(i32* %122, i32 %126)
  %128 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = call %struct.TYPE_5__* @input_item_node_AppendItem(%struct.TYPE_5__* %129, i32* %130)
  %132 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %131, %struct.TYPE_5__** %132, align 8
  %133 = load i32*, i32** %17, align 8
  %134 = call i32 @input_item_Release(i32* %133)
  %135 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = icmp eq %struct.TYPE_5__* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %121
  %139 = load %struct.rdh_dir*, %struct.rdh_dir** %15, align 8
  %140 = call i32 @free(%struct.rdh_dir* %139)
  %141 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %141, i32* %5, align 4
  br label %163

142:                                              ; preds = %121
  %143 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = load %struct.rdh_dir*, %struct.rdh_dir** %15, align 8
  %146 = getelementptr inbounds %struct.rdh_dir, %struct.rdh_dir* %145, i32 0, i32 1
  store %struct.TYPE_5__* %144, %struct.TYPE_5__** %146, align 8
  %147 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %6, align 8
  %148 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %6, align 8
  %151 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %150, i32 0, i32 1
  %152 = load %struct.rdh_dir**, %struct.rdh_dir*** %151, align 8
  %153 = load %struct.rdh_dir*, %struct.rdh_dir** %15, align 8
  %154 = call i32 @TAB_APPEND(i64 %149, %struct.rdh_dir** %152, %struct.rdh_dir* %153)
  br label %158

155:                                              ; preds = %66
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %157 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %156, %struct.TYPE_5__** %157, align 8
  br label %158

158:                                              ; preds = %155, %142
  %159 = load i8*, i8** %10, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %10, align 8
  br label %23

161:                                              ; preds = %23
  %162 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %161, %138, %117, %81
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.rdh_dir* @malloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @input_item_NewExt(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.rdh_dir*) #1

declare dso_local i32 @input_item_CopyOptions(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @input_item_node_AppendItem(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @TAB_APPEND(i64, %struct.rdh_dir**, %struct.rdh_dir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
