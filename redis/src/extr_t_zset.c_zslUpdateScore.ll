; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslUpdateScore.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslUpdateScore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { double, i32*, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_13__ = type { double }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }

@ZSKIPLIST_MAXLEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @zslUpdateScore(%struct.TYPE_16__* %0, double %1, i32 %2, double %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store double %1, double* %7, align 8
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  %16 = load i32, i32* @ZSKIPLIST_MAXLEVEL, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca %struct.TYPE_15__*, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %12, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %101, %4
  %28 = load i32, i32* %13, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %104

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %87, %30
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = icmp ne %struct.TYPE_15__* %39, null
  br i1 %40, label %41, label %85

41:                                               ; preds = %31
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load double, double* %50, align 8
  %52 = load double, double* %7, align 8
  %53 = fcmp olt double %51, %52
  br i1 %53, label %83, label %54

54:                                               ; preds = %41
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = load double, double* %7, align 8
  %66 = fcmp oeq double %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %54
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @sdscmp(i32* %77, i32 %78)
  %80 = icmp slt i64 %79, 0
  br label %81

81:                                               ; preds = %67, %54
  %82 = phi i1 [ false, %54 ], [ %80, %67 ]
  br label %83

83:                                               ; preds = %81, %41
  %84 = phi i1 [ true, %41 ], [ %82, %81 ]
  br label %85

85:                                               ; preds = %83, %31
  %86 = phi i1 [ false, %31 ], [ %84, %83 ]
  br i1 %86, label %87, label %96

87:                                               ; preds = %85
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  store %struct.TYPE_15__* %95, %struct.TYPE_15__** %12, align 8
  br label %31

96:                                               ; preds = %85
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %19, i64 %99
  store %struct.TYPE_15__* %97, %struct.TYPE_15__** %100, align 8
  br label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %13, align 4
  br label %27

104:                                              ; preds = %27
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  store %struct.TYPE_15__* %110, %struct.TYPE_15__** %12, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %112 = icmp ne %struct.TYPE_15__* %111, null
  br i1 %112, label %113, label %126

113:                                              ; preds = %104
  %114 = load double, double* %7, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load double, double* %116, align 8
  %118 = fcmp oeq double %114, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i64 @sdscmp(i32* %122, i32 %123)
  %125 = icmp eq i64 %124, 0
  br label %126

126:                                              ; preds = %119, %113, %104
  %127 = phi i1 [ false, %113 ], [ false, %104 ], [ %125, %119 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @serverAssert(i32 %128)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = icmp eq %struct.TYPE_13__* %132, null
  br i1 %133, label %142, label %134

134:                                              ; preds = %126
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load double, double* %138, align 8
  %140 = load double, double* %9, align 8
  %141 = fcmp olt double %139, %140
  br i1 %141, label %142, label %166

142:                                              ; preds = %134, %126
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = icmp eq %struct.TYPE_15__* %148, null
  br i1 %149, label %161, label %150

150:                                              ; preds = %142
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load double, double* %157, align 8
  %159 = load double, double* %9, align 8
  %160 = fcmp ogt double %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %150, %142
  %162 = load double, double* %9, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  store double %162, double* %164, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %165, %struct.TYPE_15__** %5, align 8
  store i32 1, i32* %14, align 4
  br label %181

166:                                              ; preds = %150, %134
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %169 = call i32 @zslDeleteNode(%struct.TYPE_16__* %167, %struct.TYPE_15__* %168, %struct.TYPE_15__** %19)
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %171 = load double, double* %9, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = call %struct.TYPE_15__* @zslInsert(%struct.TYPE_16__* %170, double %171, i32* %174)
  store %struct.TYPE_15__* %175, %struct.TYPE_15__** %15, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  store i32* null, i32** %177, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %179 = call i32 @zslFreeNode(%struct.TYPE_15__* %178)
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %180, %struct.TYPE_15__** %5, align 8
  store i32 1, i32* %14, align 4
  br label %181

181:                                              ; preds = %166, %161
  %182 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %183
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sdscmp(i32*, i32) #2

declare dso_local i32 @serverAssert(i32) #2

declare dso_local i32 @zslDeleteNode(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__**) #2

declare dso_local %struct.TYPE_15__* @zslInsert(%struct.TYPE_16__*, double, i32*) #2

declare dso_local i32 @zslFreeNode(%struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
