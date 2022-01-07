; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_vlc_readdir_helper_additem.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_vlc_readdir_helper_additem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_readdir_helper = type { i64, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rdh_slave = type { %struct.TYPE_5__*, %struct.rdh_slave*, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@SLAVE_PRIORITY_MATCH_NONE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@INPUT_DURATION_UNSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlc_readdir_helper*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rdh_slave*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.vlc_readdir_helper* %0, %struct.vlc_readdir_helper** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.rdh_slave* null, %struct.rdh_slave** %15, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br label %24

24:                                               ; preds = %21, %6
  %25 = phi i1 [ true, %6 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %8, align 8
  %29 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** %11, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i8*, i8** %10, align 8
  %37 = call i8* @strrchr(i8* %36, i8 signext 47)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %11, align 8
  br label %45

43:                                               ; preds = %35
  %44 = load i8*, i8** %10, align 8
  store i8* %44, i8** %11, align 8
  br label %45

45:                                               ; preds = %43, %40
  br label %46

46:                                               ; preds = %45, %32
  br label %53

47:                                               ; preds = %24
  %48 = load i8*, i8** %11, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i8*, i8** %10, align 8
  store i8* %51, i8** %11, align 8
  br label %52

52:                                               ; preds = %50, %47
  store i8* null, i8** %10, align 8
  br label %53

53:                                               ; preds = %52, %46
  %54 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %8, align 8
  %55 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %107

58:                                               ; preds = %53
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 @input_item_slave_GetType(i8* %59, i32* %14)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %107

62:                                               ; preds = %58
  %63 = call %struct.rdh_slave* @malloc(i32 24)
  store %struct.rdh_slave* %63, %struct.rdh_slave** %15, align 8
  %64 = load %struct.rdh_slave*, %struct.rdh_slave** %15, align 8
  %65 = icmp ne %struct.rdh_slave* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %67, i32* %7, align 4
  br label %166

68:                                               ; preds = %62
  %69 = load %struct.rdh_slave*, %struct.rdh_slave** %15, align 8
  %70 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %69, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %70, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call %struct.rdh_slave* @strdup(i8* %71)
  %73 = load %struct.rdh_slave*, %struct.rdh_slave** %15, align 8
  %74 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %73, i32 0, i32 1
  store %struct.rdh_slave* %72, %struct.rdh_slave** %74, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @SLAVE_PRIORITY_MATCH_NONE, align 4
  %78 = call i32 @input_item_slave_New(i8* %75, i32 %76, i32 %77)
  %79 = load %struct.rdh_slave*, %struct.rdh_slave** %15, align 8
  %80 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.rdh_slave*, %struct.rdh_slave** %15, align 8
  %82 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %68
  %86 = load %struct.rdh_slave*, %struct.rdh_slave** %15, align 8
  %87 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %86, i32 0, i32 1
  %88 = load %struct.rdh_slave*, %struct.rdh_slave** %87, align 8
  %89 = icmp ne %struct.rdh_slave* %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %85, %68
  %91 = load %struct.rdh_slave*, %struct.rdh_slave** %15, align 8
  %92 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %91, i32 0, i32 1
  %93 = load %struct.rdh_slave*, %struct.rdh_slave** %92, align 8
  %94 = call i32 @free(%struct.rdh_slave* %93)
  %95 = load %struct.rdh_slave*, %struct.rdh_slave** %15, align 8
  %96 = call i32 @free(%struct.rdh_slave* %95)
  %97 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %97, i32* %7, align 4
  br label %166

98:                                               ; preds = %85
  %99 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %8, align 8
  %100 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %8, align 8
  %103 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.rdh_slave*, %struct.rdh_slave** %15, align 8
  %106 = call i32 @TAB_APPEND(i32 %101, i32 %104, %struct.rdh_slave* %105)
  br label %107

107:                                              ; preds = %98, %58, %53
  %108 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %8, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = call i64 @rdh_file_is_ignored(%struct.vlc_readdir_helper* %108, i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %113, i32* %7, align 4
  br label %166

114:                                              ; preds = %107
  %115 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %8, align 8
  %116 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  store %struct.TYPE_5__* %117, %struct.TYPE_5__** %16, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %114
  %121 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %8, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @rdh_unflatten(%struct.vlc_readdir_helper* %121, %struct.TYPE_5__** %16, i8* %122, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* @VLC_SUCCESS, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* %17, align 4
  store i32 %129, i32* %7, align 4
  br label %166

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %114
  %132 = load i8*, i8** %9, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* @INPUT_DURATION_UNSET, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32* @input_item_NewExt(i8* %132, i8* %133, i32 %134, i32 %135, i32 %136)
  store i32* %137, i32** %18, align 8
  %138 = load i32*, i32** %18, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %141, i32* %7, align 4
  br label %166

142:                                              ; preds = %131
  %143 = load i32*, i32** %18, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @input_item_CopyOptions(i32* %143, i32 %146)
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %149 = load i32*, i32** %18, align 8
  %150 = call %struct.TYPE_5__* @input_item_node_AppendItem(%struct.TYPE_5__* %148, i32* %149)
  store %struct.TYPE_5__* %150, %struct.TYPE_5__** %16, align 8
  %151 = load i32*, i32** %18, align 8
  %152 = call i32 @input_item_Release(i32* %151)
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %154 = icmp eq %struct.TYPE_5__* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %142
  %156 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %156, i32* %7, align 4
  br label %166

157:                                              ; preds = %142
  %158 = load %struct.rdh_slave*, %struct.rdh_slave** %15, align 8
  %159 = icmp ne %struct.rdh_slave* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %162 = load %struct.rdh_slave*, %struct.rdh_slave** %15, align 8
  %163 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %162, i32 0, i32 0
  store %struct.TYPE_5__* %161, %struct.TYPE_5__** %163, align 8
  br label %164

164:                                              ; preds = %160, %157
  %165 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %164, %155, %140, %128, %112, %90, %66
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @input_item_slave_GetType(i8*, i32*) #1

declare dso_local %struct.rdh_slave* @malloc(i32) #1

declare dso_local %struct.rdh_slave* @strdup(i8*) #1

declare dso_local i32 @input_item_slave_New(i8*, i32, i32) #1

declare dso_local i32 @free(%struct.rdh_slave*) #1

declare dso_local i32 @TAB_APPEND(i32, i32, %struct.rdh_slave*) #1

declare dso_local i64 @rdh_file_is_ignored(%struct.vlc_readdir_helper*, i8*) #1

declare dso_local i32 @rdh_unflatten(%struct.vlc_readdir_helper*, %struct.TYPE_5__**, i8*, i32) #1

declare dso_local i32* @input_item_NewExt(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @input_item_CopyOptions(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @input_item_node_AppendItem(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
