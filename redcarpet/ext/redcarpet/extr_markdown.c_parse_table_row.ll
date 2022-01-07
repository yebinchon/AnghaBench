; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_table_row.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_table_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32, i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32, i32)* }
%struct.buf.0 = type opaque
%struct.buf.1 = type opaque

@BUFFER_SPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.sd_markdown*, i8*, i64, i64, i32*, i32)* @parse_table_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_table_row(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3, i64 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.buf*, align 8
  %9 = alloca %struct.sd_markdown*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.buf*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.buf*, align 8
  %21 = alloca %struct.buf, align 4
  store %struct.buf* %0, %struct.buf** %8, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store %struct.buf* null, %struct.buf** %17, align 8
  %22 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %23 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.buf.1*, %struct.buf.1*, i32, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.buf.1*, %struct.buf.1*, i32, i32)* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %7
  %28 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %29 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32)* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %7
  br label %200

34:                                               ; preds = %27
  %35 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %36 = load i32, i32* @BUFFER_SPAN, align 4
  %37 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %35, i32 %36)
  store %struct.buf* %37, %struct.buf** %17, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %15, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 124
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i64, i64* %15, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %15, align 8
  br label %51

51:                                               ; preds = %48, %41, %34
  store i64 0, i64* %16, align 8
  br label %52

52:                                               ; preds = %154, %51
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp ult i64 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  br i1 %61, label %62, label %157

62:                                               ; preds = %60
  %63 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %64 = load i32, i32* @BUFFER_SPAN, align 4
  %65 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %63, i32 %64)
  store %struct.buf* %65, %struct.buf** %20, align 8
  br label %66

66:                                               ; preds = %79, %62
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i8*, i8** %10, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @_isspace(i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br label %77

77:                                               ; preds = %70, %66
  %78 = phi i1 [ false, %66 ], [ %76, %70 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i64, i64* %15, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %15, align 8
  br label %66

82:                                               ; preds = %77
  %83 = load i64, i64* %15, align 8
  store i64 %83, i64* %18, align 8
  br label %84

84:                                               ; preds = %97, %82
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %11, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i8*, i8** %10, align 8
  %90 = load i64, i64* %15, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 124
  br label %95

95:                                               ; preds = %88, %84
  %96 = phi i1 [ false, %84 ], [ %94, %88 ]
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = load i64, i64* %15, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %15, align 8
  br label %84

100:                                              ; preds = %95
  %101 = load i64, i64* %15, align 8
  %102 = sub i64 %101, 1
  store i64 %102, i64* %19, align 8
  br label %103

103:                                              ; preds = %116, %100
  %104 = load i64, i64* %19, align 8
  %105 = load i64, i64* %18, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i8*, i8** %10, align 8
  %109 = load i64, i64* %19, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = call i64 @_isspace(i8 signext %111)
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %107, %103
  %115 = phi i1 [ false, %103 ], [ %113, %107 ]
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = load i64, i64* %19, align 8
  %118 = add i64 %117, -1
  store i64 %118, i64* %19, align 8
  br label %103

119:                                              ; preds = %114
  %120 = load %struct.buf*, %struct.buf** %20, align 8
  %121 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = load i64, i64* %18, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i64, i64* %19, align 8
  %126 = add i64 1, %125
  %127 = load i64, i64* %18, align 8
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  %130 = call i32 @parse_inline(%struct.buf* %120, %struct.sd_markdown* %121, i8* %124, i32 %129)
  %131 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %132 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32 (%struct.buf.1*, %struct.buf.1*, i32, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32, i32)** %133, align 8
  %135 = load %struct.buf*, %struct.buf** %17, align 8
  %136 = bitcast %struct.buf* %135 to %struct.buf.1*
  %137 = load %struct.buf*, %struct.buf** %20, align 8
  %138 = bitcast %struct.buf* %137 to %struct.buf.1*
  %139 = load i32*, i32** %13, align 8
  %140 = load i64, i64* %16, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %14, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %146 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 %134(%struct.buf.1* %136, %struct.buf.1* %138, i32 %144, i32 %147)
  %149 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %150 = load i32, i32* @BUFFER_SPAN, align 4
  %151 = call i32 @rndr_popbuf(%struct.sd_markdown* %149, i32 %150)
  %152 = load i64, i64* %15, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %15, align 8
  br label %154

154:                                              ; preds = %119
  %155 = load i64, i64* %16, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %16, align 8
  br label %52

157:                                              ; preds = %60
  br label %158

158:                                              ; preds = %181, %157
  %159 = load i64, i64* %16, align 8
  %160 = load i64, i64* %12, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %162, label %184

162:                                              ; preds = %158
  %163 = bitcast %struct.buf* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %163, i8 0, i64 16, i1 false)
  %164 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %165 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32 (%struct.buf.1*, %struct.buf.1*, i32, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32, i32)** %166, align 8
  %168 = load %struct.buf*, %struct.buf** %17, align 8
  %169 = bitcast %struct.buf* %168 to %struct.buf.1*
  %170 = bitcast %struct.buf* %21 to %struct.buf.1*
  %171 = load i32*, i32** %13, align 8
  %172 = load i64, i64* %16, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %14, align 4
  %176 = or i32 %174, %175
  %177 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %178 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 %167(%struct.buf.1* %169, %struct.buf.1* %170, i32 %176, i32 %179)
  br label %181

181:                                              ; preds = %162
  %182 = load i64, i64* %16, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %16, align 8
  br label %158

184:                                              ; preds = %158
  %185 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %186 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %187, align 8
  %189 = load %struct.buf*, %struct.buf** %8, align 8
  %190 = bitcast %struct.buf* %189 to %struct.buf.0*
  %191 = load %struct.buf*, %struct.buf** %17, align 8
  %192 = bitcast %struct.buf* %191 to %struct.buf.0*
  %193 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %194 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 %188(%struct.buf.0* %190, %struct.buf.0* %192, i32 %195)
  %197 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %198 = load i32, i32* @BUFFER_SPAN, align 4
  %199 = call i32 @rndr_popbuf(%struct.sd_markdown* %197, i32 %198)
  br label %200

200:                                              ; preds = %184, %33
  ret void
}

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i64 @_isspace(i8 signext) #1

declare dso_local i32 @parse_inline(%struct.buf*, %struct.sd_markdown*, i8*, i32) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
