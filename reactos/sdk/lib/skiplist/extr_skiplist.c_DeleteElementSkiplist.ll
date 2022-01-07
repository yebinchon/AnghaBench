; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/skiplist/extr_skiplist.c_DeleteElementSkiplist.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/skiplist/extr_skiplist.c_DeleteElementSkiplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 (i32*, i32*)*, i32, %struct.TYPE_5__, i32 (%struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_5__**, i32* }

@SKIPLIST_LEVELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DeleteElementSkiplist(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  %15 = load i32, i32* @SKIPLIST_LEVELS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca %struct.TYPE_5__*, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %70, %2
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %6, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %80

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %63, %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %32, i64 %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %29
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %40, i64 %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = icmp ne %struct.TYPE_5__* %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %37
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i64 %49(i32* %57, i32* %58)
  %60 = icmp slt i64 %59, 0
  br label %61

61:                                               ; preds = %46, %37, %29
  %62 = phi i1 [ false, %37 ], [ false, %29 ], [ %60, %46 ]
  br i1 %62, label %63, label %70

63:                                               ; preds = %61
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %66, i64 %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %8, align 8
  br label %29

70:                                               ; preds = %61
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %73, i64 %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %7, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 %78
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %79, align 8
  br label %24

80:                                               ; preds = %24
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %83, i64 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %8, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = icmp ne %struct.TYPE_5__* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %80
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %90, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i64 %91(i32* %94, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88, %80
  store i32* null, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %213

99:                                               ; preds = %88
  store i64 0, i64* %6, align 8
  br label %100

100:                                              ; preds = %150, %99
  %101 = load i64, i64* %6, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = icmp sle i64 %101, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %100
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 %108
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %112, i64 %113
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %117 = icmp eq %struct.TYPE_5__* %115, %116
  br label %118

118:                                              ; preds = %107, %100
  %119 = phi i1 [ false, %100 ], [ %117, %107 ]
  br i1 %119, label %120, label %153

120:                                              ; preds = %118
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = load i64, i64* %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 %128
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* %6, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, %127
  store i32 %136, i32* %134, align 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %138, align 8
  %140 = load i64, i64* %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %139, i64 %140
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 %143
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %147, i64 %148
  store %struct.TYPE_5__* %142, %struct.TYPE_5__** %149, align 8
  br label %150

150:                                              ; preds = %120
  %151 = load i64, i64* %6, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %6, align 8
  br label %100

153:                                              ; preds = %118
  br label %154

154:                                              ; preds = %161, %153
  %155 = load i64, i64* %6, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = icmp sle i64 %155, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %154
  %162 = load i64, i64* %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 %162
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* %6, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %168, align 4
  %171 = load i64, i64* %6, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %6, align 8
  br label %154

173:                                              ; preds = %154
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  store i32* %176, i32** %11, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 4
  %179 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %178, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %181 = call i32 %179(%struct.TYPE_5__* %180)
  br label %182

182:                                              ; preds = %202, %173
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %182
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %190, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %191, i64 %195
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = icmp ne %struct.TYPE_5__* %197, null
  %199 = xor i1 %198, true
  br label %200

200:                                              ; preds = %187, %182
  %201 = phi i1 [ false, %182 ], [ %199, %187 ]
  br i1 %201, label %202, label %207

202:                                              ; preds = %200
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %204, align 8
  br label %182

207:                                              ; preds = %200
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %209, align 8
  %212 = load i32*, i32** %11, align 8
  store i32* %212, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %213

213:                                              ; preds = %207, %98
  %214 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32*, i32** %3, align 8
  ret i32* %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
