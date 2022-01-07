; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_page_usage_btree.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_page_usage_btree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"corrupt node\00", align 1
@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"interior node of index\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"interior node of table\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"leaf of index\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"leaf of table\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s [%s], child %d of page %d\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"root %s [%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @page_usage_btree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @page_usage_btree(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 100, i32 0
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %4
  br label %224

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %36 = call i8* @fileRead(i32 %34, i32 %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  switch i32 %42, label %47 [
    i32 2, label %43
    i32 5, label %44
    i32 10, label %45
    i32 13, label %46
  ]

43:                                               ; preds = %30
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %47

44:                                               ; preds = %30
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %47

45:                                               ; preds = %30
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %47

46:                                               ; preds = %30
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %47

47:                                               ; preds = %30, %46, %45, %44, %43
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32, i8*, i8*, i8*, ...) @page_usage_msg(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %52, i8* %53, i32 %54, i32 %55)
  br label %62

57:                                               ; preds = %47
  %58 = load i32, i32* %5, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 (i32, i8*, i8*, i8*, ...) @page_usage_msg(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %57, %50
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 3
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = mul nsw i32 %69, 256
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %70, %77
  store i32 %78, i32* %11, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %94, label %86

86:                                               ; preds = %62
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 5
  br i1 %93, label %94, label %144

94:                                               ; preds = %86, %62
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 12
  store i32 %96, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %130, %94
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %133

101:                                              ; preds = %97
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %12, align 4
  %104 = mul nsw i32 %103, 2
  %105 = add nsw i32 %102, %104
  store i32 %105, i32* %16, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = mul nsw i32 %111, 256
  %113 = load i8*, i8** %9, align 8
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = add nsw i32 %112, %119
  store i32 %120, i32* %16, align 4
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = call i32 @decodeInt32(i8* %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i8*, i8** %8, align 8
  call void @page_usage_btree(i32 %126, i32 %127, i32 %128, i8* %129)
  br label %130

130:                                              ; preds = %101
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %97

133:                                              ; preds = %97
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = getelementptr inbounds i8, i8* %137, i64 -4
  %139 = call i32 @decodeInt32(i8* %138)
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i8*, i8** %8, align 8
  call void @page_usage_btree(i32 %140, i32 %141, i32 %142, i8* %143)
  br label %144

144:                                              ; preds = %133, %86
  %145 = load i8*, i8** %9, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %168, label %152

152:                                              ; preds = %144
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 10
  br i1 %159, label %168, label %160

160:                                              ; preds = %152
  %161 = load i8*, i8** %9, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %166, 13
  br i1 %167, label %168, label %221

168:                                              ; preds = %160, %152, %144
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 8
  %171 = load i8*, i8** %9, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp sle i32 %176, 5
  %178 = zext i1 %177 to i32
  %179 = mul nsw i32 4, %178
  %180 = add nsw i32 %170, %179
  store i32 %180, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %181

181:                                              ; preds = %217, %168
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %220

185:                                              ; preds = %181
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* %12, align 4
  %188 = mul nsw i32 %187, 2
  %189 = add nsw i32 %186, %188
  store i32 %189, i32* %18, align 4
  %190 = load i8*, i8** %9, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = mul nsw i32 %195, 256
  %197 = load i8*, i8** %9, align 8
  %198 = load i32, i32* %18, align 4
  %199 = add nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %197, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = add nsw i32 %196, %203
  store i32 %204, i32* %18, align 4
  %205 = load i8*, i8** %9, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = load i8*, i8** %9, align 8
  %211 = load i32, i32* %18, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* %12, align 4
  %216 = call i32 @page_usage_cell(i8 zeroext %209, i8* %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %185
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %12, align 4
  br label %181

220:                                              ; preds = %181
  br label %221

221:                                              ; preds = %220, %160
  %222 = load i8*, i8** %9, align 8
  %223 = call i32 @sqlite3_free(i8* %222)
  br label %224

224:                                              ; preds = %221, %29
  ret void
}

declare dso_local i8* @fileRead(i32, i32) #1

declare dso_local i32 @page_usage_msg(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @decodeInt32(i8*) #1

declare dso_local i32 @page_usage_cell(i8 zeroext, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
