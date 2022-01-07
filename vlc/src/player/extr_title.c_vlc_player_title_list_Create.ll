; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_title.c_vlc_player_title_list_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_title.c_vlc_player_title_list_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_title_list = type { i64, %struct.vlc_player_title*, i32 }
%struct.vlc_player_title = type { i64, i32, %struct.vlc_player_chapter*, i32, i32 }
%struct.vlc_player_chapter = type { i32, i32 }
%struct.input_title_t = type { i64, %struct.TYPE_3__**, i32, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_player_title_list* @vlc_player_title_list_Create(%struct.input_title_t** %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vlc_player_title_list*, align 8
  %6 = alloca %struct.input_title_t**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.vlc_player_title_list*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.input_title_t*, align 8
  %14 = alloca %struct.vlc_player_title*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.vlc_player_chapter*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.vlc_player_chapter*, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  store %struct.input_title_t** %0, %struct.input_title_t*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store %struct.vlc_player_title_list* null, %struct.vlc_player_title_list** %5, align 8
  br label %180

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @mul_overflow(i64 %24, i32 32, i64* %10)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.vlc_player_title_list* null, %struct.vlc_player_title_list** %5, align 8
  br label %180

28:                                               ; preds = %23
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @add_overflow(i64 %29, i32 24, i64* %10)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store %struct.vlc_player_title_list* null, %struct.vlc_player_title_list** %5, align 8
  br label %180

33:                                               ; preds = %28
  %34 = load i64, i64* %10, align 8
  %35 = call %struct.vlc_player_title_list* @malloc(i64 %34)
  store %struct.vlc_player_title_list* %35, %struct.vlc_player_title_list** %11, align 8
  %36 = load %struct.vlc_player_title_list*, %struct.vlc_player_title_list** %11, align 8
  %37 = icmp ne %struct.vlc_player_title_list* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store %struct.vlc_player_title_list* null, %struct.vlc_player_title_list** %5, align 8
  br label %180

39:                                               ; preds = %33
  %40 = load %struct.vlc_player_title_list*, %struct.vlc_player_title_list** %11, align 8
  %41 = getelementptr inbounds %struct.vlc_player_title_list, %struct.vlc_player_title_list* %40, i32 0, i32 2
  %42 = call i32 @vlc_atomic_rc_init(i32* %41)
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.vlc_player_title_list*, %struct.vlc_player_title_list** %11, align 8
  %45 = getelementptr inbounds %struct.vlc_player_title_list, %struct.vlc_player_title_list* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  store i64 0, i64* %12, align 8
  br label %46

46:                                               ; preds = %175, %39
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.vlc_player_title_list*, %struct.vlc_player_title_list** %11, align 8
  %49 = getelementptr inbounds %struct.vlc_player_title_list, %struct.vlc_player_title_list* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %178

52:                                               ; preds = %46
  %53 = load %struct.input_title_t**, %struct.input_title_t*** %6, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds %struct.input_title_t*, %struct.input_title_t** %53, i64 %54
  %56 = load %struct.input_title_t*, %struct.input_title_t** %55, align 8
  store %struct.input_title_t* %56, %struct.input_title_t** %13, align 8
  %57 = load %struct.vlc_player_title_list*, %struct.vlc_player_title_list** %11, align 8
  %58 = getelementptr inbounds %struct.vlc_player_title_list, %struct.vlc_player_title_list* %57, i32 0, i32 1
  %59 = load %struct.vlc_player_title*, %struct.vlc_player_title** %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %59, i64 %60
  store %struct.vlc_player_title* %61, %struct.vlc_player_title** %14, align 8
  %62 = load %struct.input_title_t*, %struct.input_title_t** %13, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @input_title_GetName(%struct.input_title_t* %62, i64 %63, i32 %64)
  %66 = load %struct.vlc_player_title*, %struct.vlc_player_title** %14, align 8
  %67 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.input_title_t*, %struct.input_title_t** %13, align 8
  %69 = getelementptr inbounds %struct.input_title_t, %struct.input_title_t* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vlc_player_title*, %struct.vlc_player_title** %14, align 8
  %72 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.input_title_t*, %struct.input_title_t** %13, align 8
  %74 = getelementptr inbounds %struct.input_title_t, %struct.input_title_t* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.vlc_player_title*, %struct.vlc_player_title** %14, align 8
  %77 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.input_title_t*, %struct.input_title_t** %13, align 8
  %79 = getelementptr inbounds %struct.input_title_t, %struct.input_title_t* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %52
  %83 = load %struct.input_title_t*, %struct.input_title_t** %13, align 8
  %84 = getelementptr inbounds %struct.input_title_t, %struct.input_title_t* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  br label %87

86:                                               ; preds = %52
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i64 [ %85, %82 ], [ 0, %86 ]
  store i64 %88, i64* %15, align 8
  %89 = load i64, i64* %15, align 8
  %90 = load %struct.vlc_player_title*, %struct.vlc_player_title** %14, align 8
  %91 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.vlc_player_title*, %struct.vlc_player_title** %14, align 8
  %93 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %102

97:                                               ; preds = %87
  %98 = load %struct.vlc_player_title*, %struct.vlc_player_title** %14, align 8
  %99 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call %struct.vlc_player_chapter* @vlc_alloc(i64 %100, i32 8)
  br label %102

102:                                              ; preds = %97, %96
  %103 = phi %struct.vlc_player_chapter* [ null, %96 ], [ %101, %97 ]
  store %struct.vlc_player_chapter* %103, %struct.vlc_player_chapter** %16, align 8
  %104 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %16, align 8
  %105 = icmp ne %struct.vlc_player_chapter* %104, null
  br i1 %105, label %106, label %147

106:                                              ; preds = %102
  store i64 0, i64* %17, align 8
  br label %107

107:                                              ; preds = %143, %106
  %108 = load i64, i64* %17, align 8
  %109 = load %struct.vlc_player_title*, %struct.vlc_player_title** %14, align 8
  %110 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ult i64 %108, %111
  br i1 %112, label %113, label %146

113:                                              ; preds = %107
  %114 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %16, align 8
  %115 = load i64, i64* %17, align 8
  %116 = getelementptr inbounds %struct.vlc_player_chapter, %struct.vlc_player_chapter* %114, i64 %115
  store %struct.vlc_player_chapter* %116, %struct.vlc_player_chapter** %18, align 8
  %117 = load %struct.input_title_t*, %struct.input_title_t** %13, align 8
  %118 = getelementptr inbounds %struct.input_title_t, %struct.input_title_t* %117, i32 0, i32 1
  %119 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %118, align 8
  %120 = load i64, i64* %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %119, i64 %120
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  store %struct.TYPE_3__* %122, %struct.TYPE_3__** %19, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %124 = load i64, i64* %17, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @seekpoint_GetName(%struct.TYPE_3__* %123, i64 %124, i32 %125)
  %127 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %18, align 8
  %128 = getelementptr inbounds %struct.vlc_player_chapter, %struct.vlc_player_chapter* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %18, align 8
  %133 = getelementptr inbounds %struct.vlc_player_chapter, %struct.vlc_player_chapter* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %18, align 8
  %135 = getelementptr inbounds %struct.vlc_player_chapter, %struct.vlc_player_chapter* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %113
  %139 = load i64, i64* %17, align 8
  %140 = load %struct.vlc_player_title*, %struct.vlc_player_title** %14, align 8
  %141 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %138, %113
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %17, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %17, align 8
  br label %107

146:                                              ; preds = %107
  br label %154

147:                                              ; preds = %102
  %148 = load i64, i64* %15, align 8
  %149 = icmp ugt i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.vlc_player_title*, %struct.vlc_player_title** %14, align 8
  %152 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  br label %153

153:                                              ; preds = %150, %147
  br label %154

154:                                              ; preds = %153, %146
  %155 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %16, align 8
  %156 = load %struct.vlc_player_title*, %struct.vlc_player_title** %14, align 8
  %157 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %156, i32 0, i32 2
  store %struct.vlc_player_chapter* %155, %struct.vlc_player_chapter** %157, align 8
  %158 = load %struct.vlc_player_title*, %struct.vlc_player_title** %14, align 8
  %159 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %154
  %163 = load i64, i64* %15, align 8
  %164 = load %struct.vlc_player_title*, %struct.vlc_player_title** %14, align 8
  %165 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %163, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %162, %154
  %169 = load i64, i64* %12, align 8
  %170 = load %struct.vlc_player_title_list*, %struct.vlc_player_title_list** %11, align 8
  %171 = getelementptr inbounds %struct.vlc_player_title_list, %struct.vlc_player_title_list* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = load %struct.vlc_player_title_list*, %struct.vlc_player_title_list** %11, align 8
  %173 = call i32 @vlc_player_title_list_Release(%struct.vlc_player_title_list* %172)
  store %struct.vlc_player_title_list* null, %struct.vlc_player_title_list** %5, align 8
  br label %180

174:                                              ; preds = %162
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %12, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %12, align 8
  br label %46

178:                                              ; preds = %46
  %179 = load %struct.vlc_player_title_list*, %struct.vlc_player_title_list** %11, align 8
  store %struct.vlc_player_title_list* %179, %struct.vlc_player_title_list** %5, align 8
  br label %180

180:                                              ; preds = %178, %168, %38, %32, %27, %22
  %181 = load %struct.vlc_player_title_list*, %struct.vlc_player_title_list** %5, align 8
  ret %struct.vlc_player_title_list* %181
}

declare dso_local i64 @mul_overflow(i64, i32, i64*) #1

declare dso_local i64 @add_overflow(i64, i32, i64*) #1

declare dso_local %struct.vlc_player_title_list* @malloc(i64) #1

declare dso_local i32 @vlc_atomic_rc_init(i32*) #1

declare dso_local i32 @input_title_GetName(%struct.input_title_t*, i64, i32) #1

declare dso_local %struct.vlc_player_chapter* @vlc_alloc(i64, i32) #1

declare dso_local i32 @seekpoint_GetName(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @vlc_player_title_list_Release(%struct.vlc_player_title_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
