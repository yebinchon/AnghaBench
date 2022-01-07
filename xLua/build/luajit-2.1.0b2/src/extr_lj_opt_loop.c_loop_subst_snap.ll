; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_loop.c_loop_subst_snap.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_loop.c_loop_subst_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i64, i64, i32*, i64, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i32*, i64*)* @loop_subst_snap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_subst_snap(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32* %28, i32** %10, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = call i64 @snap_nextofs(%struct.TYPE_10__* %34, %struct.TYPE_9__* %35)
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  store i32* %37, i32** %11, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %16, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %17, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %51
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %18, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @irt_isguard(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %12, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %75

69:                                               ; preds = %4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 -1
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %18, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %69, %59
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load i64, i64* %12, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 5
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %9, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %106

106:                                              ; preds = %162, %75
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* %16, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %163

110:                                              ; preds = %106
  %111 = load i32*, i32** %10, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %19, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = load i64, i64* %14, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = call i64 @snap_slot(i32 %119)
  %121 = load i32, i32* %19, align 4
  %122 = call i64 @snap_slot(i32 %121)
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %110
  %125 = load i32, i32* %20, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = load i64, i64* %15, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %15, align 8
  %129 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 %125, i32* %129, align 4
  %130 = load i64, i64* %14, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %14, align 8
  br label %162

132:                                              ; preds = %110
  %133 = load i32, i32* %20, align 4
  %134 = call i64 @snap_slot(i32 %133)
  %135 = load i32, i32* %19, align 4
  %136 = call i64 @snap_slot(i32 %135)
  %137 = icmp eq i64 %134, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i64, i64* %14, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %14, align 8
  br label %141

141:                                              ; preds = %138, %132
  %142 = load i32, i32* %19, align 4
  %143 = call i64 @snap_ref(i32 %142)
  %144 = call i32 @irref_isk(i64 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %19, align 4
  %148 = load i64*, i64** %8, align 8
  %149 = load i32, i32* %19, align 4
  %150 = call i64 @snap_ref(i32 %149)
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @snap_setref(i32 %147, i64 %152)
  store i32 %153, i32* %19, align 4
  br label %154

154:                                              ; preds = %146, %141
  %155 = load i32, i32* %19, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = load i64, i64* %15, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %15, align 8
  %159 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32 %155, i32* %159, align 4
  %160 = load i64, i64* %13, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %13, align 8
  br label %162

162:                                              ; preds = %154, %124
  br label %106

163:                                              ; preds = %106
  br label %164

164:                                              ; preds = %172, %163
  %165 = load i32*, i32** %7, align 8
  %166 = load i64, i64* %14, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @snap_slot(i32 %168)
  %170 = load i64, i64* %17, align 8
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %164
  %173 = load i32*, i32** %7, align 8
  %174 = load i64, i64* %14, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %14, align 8
  %176 = getelementptr inbounds i32, i32* %173, i64 %174
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %9, align 8
  %179 = load i64, i64* %15, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %15, align 8
  %181 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32 %177, i32* %181, align 4
  br label %164

182:                                              ; preds = %164
  %183 = load i64, i64* %15, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  %186 = load i64, i64* %16, align 8
  %187 = load i32*, i32** %10, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 %186
  store i32* %188, i32** %10, align 8
  %189 = load i64, i64* %15, align 8
  %190 = load i32*, i32** %9, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 %189
  store i32* %191, i32** %9, align 8
  br label %192

192:                                              ; preds = %196, %182
  %193 = load i32*, i32** %10, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = icmp ult i32* %193, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %192
  %197 = load i32*, i32** %10, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %10, align 8
  %199 = load i32, i32* %197, align 4
  %200 = load i32*, i32** %9, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %9, align 8
  store i32 %199, i32* %200, align 4
  br label %192

202:                                              ; preds = %192
  %203 = load i32*, i32** %9, align 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = ptrtoint i32* %203 to i64
  %209 = ptrtoint i32* %207 to i64
  %210 = sub i64 %208, %209
  %211 = sdiv exact i64 %210, 4
  %212 = inttoptr i64 %211 to i8*
  %213 = ptrtoint i8* %212 to i64
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  store i64 %213, i64* %216, align 8
  ret void
}

declare dso_local i64 @snap_nextofs(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i64 @irt_isguard(i64) #1

declare dso_local i64 @snap_slot(i32) #1

declare dso_local i32 @irref_isk(i64) #1

declare dso_local i64 @snap_ref(i32) #1

declare dso_local i32 @snap_setref(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
