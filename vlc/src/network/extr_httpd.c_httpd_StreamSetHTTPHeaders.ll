; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_StreamSetHTTPHeaders.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_StreamSetHTTPHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_StreamSetHTTPHeaders(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %14, i32* %4, align 4
  br label %191

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = call i32 @vlc_mutex_lock(i32* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %59

23:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = call i32 @free(%struct.TYPE_9__* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = call i32 @free(%struct.TYPE_9__* %45)
  br label %47

47:                                               ; preds = %30
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %24

50:                                               ; preds = %24
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = call i32 @free(%struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %50, %15
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = icmp ne %struct.TYPE_8__* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = call i32 @vlc_mutex_unlock(i32* %67)
  %69 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %69, i32* %4, align 4
  br label %191

70:                                               ; preds = %62
  %71 = load i64, i64* %7, align 8
  %72 = call %struct.TYPE_9__* @vlc_alloc(i64 %71, i32 8)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = icmp ne %struct.TYPE_9__* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %70
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = call i32 @vlc_mutex_unlock(i32* %81)
  %83 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %83, i32* %4, align 4
  br label %191

84:                                               ; preds = %70
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %85

85:                                               ; preds = %180, %84
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %183

89:                                               ; preds = %85
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br label %104

104:                                              ; preds = %96, %89
  %105 = phi i1 [ true, %89 ], [ %103, %96 ]
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %180

110:                                              ; preds = %104
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @strdup(i32 %115)
  %117 = bitcast i8* %116 to %struct.TYPE_9__*
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %123, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @strdup(i32 %128)
  %130 = bitcast i8* %129 to %struct.TYPE_9__*
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  store %struct.TYPE_9__* %130, %struct.TYPE_9__** %136, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = icmp ne %struct.TYPE_9__* %143, null
  br i1 %144, label %145, label %155

145:                                              ; preds = %110
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load i64, i64* %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = icmp ne %struct.TYPE_9__* %152, null
  %154 = xor i1 %153, true
  br label %155

155:                                              ; preds = %145, %110
  %156 = phi i1 [ true, %110 ], [ %154, %145 ]
  %157 = zext i1 %156 to i32
  %158 = call i64 @unlikely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %155
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = load i64, i64* %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = call i32 @free(%struct.TYPE_9__* %167)
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load i64, i64* %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = call i32 @free(%struct.TYPE_9__* %175)
  br label %183

177:                                              ; preds = %155
  %178 = load i64, i64* %9, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %9, align 8
  br label %180

180:                                              ; preds = %177, %109
  %181 = load i64, i64* %10, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %10, align 8
  br label %85

183:                                              ; preds = %160, %85
  %184 = load i64, i64* %9, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = call i32 @vlc_mutex_unlock(i32* %188)
  %190 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %183, %79, %65, %13
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_9__* @vlc_alloc(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
