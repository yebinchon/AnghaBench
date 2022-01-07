; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rax.c_raxIteratorPrevStep.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rax.c_raxIteratorPrevStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, i8*, %struct.TYPE_18__*, i32, %struct.TYPE_20__, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i8*, i64, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }

@RAX_ITER_EOF = common dso_local global i32 0, align 4
@RAX_ITER_JUST_SEEKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SCAN PREV %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SCAN found a new node\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raxIteratorPrevStep(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__**, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RAX_ITER_EOF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %229

21:                                               ; preds = %2
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RAX_ITER_JUST_SEEKED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* @RAX_ITER_JUST_SEEKED, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  store i32 1, i32* %3, align 4
  br label %229

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %8, align 8
  br label %47

47:                                               ; preds = %36, %228
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %77, label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = icmp eq %struct.TYPE_18__* %54, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %51
  %62 = load i32, i32* @RAX_ITER_EOF, align 4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 3
  store %struct.TYPE_18__* %74, %struct.TYPE_18__** %76, align 8
  store i32 1, i32* %3, align 4
  br label %229

77:                                               ; preds = %51, %47
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %83, 1
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %10, align 1
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %77
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 5
  %92 = call %struct.TYPE_18__* @raxStackPop(%struct.TYPE_20__* %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 3
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %94, align 8
  br label %96

95:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %89
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  br label %110

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %103
  %111 = phi i32 [ %108, %103 ], [ 1, %109 ]
  store i32 %111, i32* %11, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @raxIteratorDelChars(%struct.TYPE_19__* %112, i32 %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %214, label %121

121:                                              ; preds = %110
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 0, i32 1
  %131 = icmp sgt i32 %126, %130
  br i1 %131, label %132, label %214

132:                                              ; preds = %121
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = call %struct.TYPE_18__** @raxNodeLastChildPtr(%struct.TYPE_18__* %135)
  store %struct.TYPE_18__** %136, %struct.TYPE_18__*** %12, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %143

143:                                              ; preds = %172, %132
  %144 = load i32, i32* %13, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %177

146:                                              ; preds = %143
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %156)
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = load i8, i8* %10, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %146
  br label %177

172:                                              ; preds = %146
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %13, align 4
  %175 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %175, i32 -1
  store %struct.TYPE_18__** %176, %struct.TYPE_18__*** %12, align 8
  br label %143

177:                                              ; preds = %171, %143
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, -1
  br i1 %179, label %180, label %213

180:                                              ; preds = %177
  %181 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = call i32 @raxIteratorAddChars(%struct.TYPE_19__* %182, i8* %190, i32 1)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %180
  store i32 0, i32* %3, align 4
  br label %229

194:                                              ; preds = %180
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 5
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = call i32 @raxStackPush(%struct.TYPE_20__* %196, %struct.TYPE_18__* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %194
  store i32 0, i32* %3, align 4
  br label %229

203:                                              ; preds = %194
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %12, align 8
  %207 = call i32 @memcpy(%struct.TYPE_18__** %205, %struct.TYPE_18__** %206, i32 8)
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %209 = call i32 @raxSeekGreatest(%struct.TYPE_19__* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %203
  store i32 0, i32* %3, align 4
  br label %229

212:                                              ; preds = %203
  br label %213

213:                                              ; preds = %212, %177
  br label %214

214:                                              ; preds = %213, %121, %110
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %214
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %223, align 8
  %225 = call i32 @raxGetData(%struct.TYPE_18__* %224)
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 4
  store i32 %225, i32* %227, align 8
  store i32 1, i32* %3, align 4
  br label %229

228:                                              ; preds = %214
  br label %47

229:                                              ; preds = %221, %211, %202, %193, %61, %28, %20
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local %struct.TYPE_18__* @raxStackPop(%struct.TYPE_20__*) #1

declare dso_local i32 @raxIteratorDelChars(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_18__** @raxNodeLastChildPtr(%struct.TYPE_18__*) #1

declare dso_local i32 @debugf(i8*, ...) #1

declare dso_local i32 @raxIteratorAddChars(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @raxStackPush(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__**, %struct.TYPE_18__**, i32) #1

declare dso_local i32 @raxSeekGreatest(%struct.TYPE_19__*) #1

declare dso_local i32 @raxGetData(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
