; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3CreateView.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3CreateView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, %struct.TYPE_28__, i64, %struct.TYPE_29__*, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i8*, i32 }
%struct.TYPE_29__ = type { i32, i32*, i32 }
%struct.TYPE_27__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"parameters are not allowed in views\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@EXPRDUP_REDUCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3CreateView(%struct.TYPE_30__* %0, %struct.TYPE_28__* %1, %struct.TYPE_28__* %2, %struct.TYPE_28__* %3, i32* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_28__, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_28__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %9, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %10, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %11, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %22, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  store %struct.TYPE_27__* %27, %struct.TYPE_27__** %24, align 8
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %8
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %34 = call i32 @sqlite3ErrorMsg(%struct.TYPE_30__* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %169

35:                                               ; preds = %8
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @sqlite3StartTable(%struct.TYPE_30__* %36, %struct.TYPE_28__* %37, %struct.TYPE_28__* %38, i32 %39, i32 1, i32 0, i32 %40)
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %43, align 8
  store %struct.TYPE_29__* %44, %struct.TYPE_29__** %17, align 8
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %46 = icmp eq %struct.TYPE_29__* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %35
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %35
  br label %169

53:                                               ; preds = %47
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %57 = call i32 @sqlite3TwoPartName(%struct.TYPE_30__* %54, %struct.TYPE_28__* %55, %struct.TYPE_28__* %56, %struct.TYPE_28__** %22)
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_27__* %58, i32 %61)
  store i32 %62, i32* %23, align 4
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %64 = load i32, i32* %23, align 4
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %66 = call i32 @sqlite3FixInit(i32* %21, %struct.TYPE_30__* %63, i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_28__* %65)
  %67 = load i32*, i32** %14, align 8
  %68 = call i64 @sqlite3FixSelect(i32* %21, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  br label %169

71:                                               ; preds = %53
  %72 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32*, i32** %14, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  store i32* null, i32** %14, align 8
  br label %85

78:                                               ; preds = %71
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %82 = call i32* @sqlite3SelectDup(%struct.TYPE_27__* %79, i32* %80, i32 %81)
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  br label %85

85:                                               ; preds = %78, %74
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %89 = call i32 @sqlite3ExprListDup(%struct.TYPE_27__* %86, i32* %87, i32 %88)
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %169

97:                                               ; preds = %85
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 1
  %100 = bitcast %struct.TYPE_28__* %20 to i8*
  %101 = bitcast %struct.TYPE_28__* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 16, i1 false)
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 0
  br label %112

112:                                              ; preds = %108, %97
  %113 = phi i1 [ true, %97 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 59
  br i1 %121, label %122, label %129

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = sext i32 %124 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %125, align 8
  br label %129

129:                                              ; preds = %122, %112
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 1
  store i32 0, i32* %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = ptrtoint i8* %132 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %18, align 4
  %141 = icmp sgt i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  store i8* %146, i8** %19, align 8
  br label %147

147:                                              ; preds = %156, %129
  %148 = load i8*, i8** %19, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = call i64 @sqlite3Isspace(i8 signext %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load i32, i32* %18, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %18, align 4
  br label %147

159:                                              ; preds = %147
  %160 = load i8*, i8** %19, align 8
  %161 = load i32, i32* %18, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  store i8* %164, i8** %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 1
  store i32 1, i32* %166, align 8
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %168 = call i32 @sqlite3EndTable(%struct.TYPE_30__* %167, i32 0, %struct.TYPE_28__* %20, i32 0, i32 0)
  br label %169

169:                                              ; preds = %159, %96, %70, %52, %32
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %171 = load i32*, i32** %14, align 8
  %172 = call i32 @sqlite3SelectDelete(%struct.TYPE_27__* %170, i32* %171)
  %173 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %177 = load i32*, i32** %13, align 8
  %178 = call i32 @sqlite3RenameExprlistUnmap(%struct.TYPE_30__* %176, i32* %177)
  br label %179

179:                                              ; preds = %175, %169
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %181 = load i32*, i32** %13, align 8
  %182 = call i32 @sqlite3ExprListDelete(%struct.TYPE_27__* %180, i32* %181)
  ret void
}

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_30__*, i8*) #1

declare dso_local i32 @sqlite3StartTable(%struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3TwoPartName(%struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__**) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @sqlite3FixInit(i32*, %struct.TYPE_30__*, i32, i8*, %struct.TYPE_28__*) #1

declare dso_local i64 @sqlite3FixSelect(i32*, i32*) #1

declare dso_local i32* @sqlite3SelectDup(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local i32 @sqlite3ExprListDup(%struct.TYPE_27__*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3Isspace(i8 signext) #1

declare dso_local i32 @sqlite3EndTable(%struct.TYPE_30__*, i32, %struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @sqlite3SelectDelete(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @sqlite3RenameExprlistUnmap(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @sqlite3ExprListDelete(%struct.TYPE_27__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
