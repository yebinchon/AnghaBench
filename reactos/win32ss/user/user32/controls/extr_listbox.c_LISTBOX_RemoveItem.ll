; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_RemoveItem.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_RemoveItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i32, i32* }

@LB_ERR = common dso_local global i32 0, align 4
@LB_OKAY = common dso_local global i32 0, align 4
@LB_ARRAY_GRANULARITY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ISWIN31 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64)* @LISTBOX_RemoveItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_RemoveItem(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @LB_ERR, align 4
  store i32 %17, i32* %3, align 4
  br label %186

18:                                               ; preds = %10
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @LISTBOX_InvalidateItems(%struct.TYPE_9__* %19, i64 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @LISTBOX_DeleteItem(%struct.TYPE_9__* %26, i64 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @LB_OKAY, align 4
  store i32 %34, i32* %3, align 4
  br label %186

35:                                               ; preds = %18
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %35
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = sub i64 %52, %53
  %55 = mul i64 %54, 4
  %56 = call i32 @RtlMoveMemory(i32* %47, i32* %49, i64 %55)
  br label %57

57:                                               ; preds = %46, %35
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %65, %57
  %71 = call i32 (...) @GetProcessHeap()
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @HeapSize(i32 %71, i32 0, i32* %74)
  %76 = sext i32 %75 to i64
  %77 = udiv i64 %76, 4
  store i64 %77, i64* %7, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* @LB_ARRAY_GRANULARITY, align 4
  %83 = mul nsw i32 2, %82
  %84 = sext i32 %83 to i64
  %85 = sub i64 %81, %84
  %86 = icmp ult i64 %80, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %70
  %88 = load i32, i32* @LB_ARRAY_GRANULARITY, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %7, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %7, align 8
  %92 = call i32 (...) @GetProcessHeap()
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = mul i64 %96, 4
  %98 = call i32* @HeapReAlloc(i32 %92, i32 0, i32* %95, i64 %97)
  store i32* %98, i32** %6, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %87
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 5
  store i32* %102, i32** %104, align 8
  br label %105

105:                                              ; preds = %101, %87
  br label %106

106:                                              ; preds = %105, %70
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = call i32 @LISTBOX_UpdateScroll(%struct.TYPE_9__* %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %106
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = load i32, i32* @TRUE, align 4
  %119 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_9__* %117, i32 0, i32 %118)
  br label %120

120:                                              ; preds = %116, %106
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = call i32 @IS_MULTISELECT(%struct.TYPE_9__* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %159, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %5, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 3
  store i64 -1, i64* %132, align 8
  br label %158

133:                                              ; preds = %124
  %134 = load i64, i64* %5, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ult i64 %134, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %133
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, -1
  store i64 %143, i64* %141, align 8
  %144 = load i64, i64* @ISWIN31, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, 1
  %152 = trunc i64 %151 to i32
  %153 = load i32, i32* @TRUE, align 4
  %154 = load i32, i32* @FALSE, align 4
  %155 = call i32 @LISTBOX_SetSelection(%struct.TYPE_9__* %147, i32 %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %146, %139
  br label %157

157:                                              ; preds = %156, %133
  br label %158

158:                                              ; preds = %157, %130
  br label %159

159:                                              ; preds = %158, %120
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp uge i64 %163, %166
  br i1 %167, label %168, label %184

168:                                              ; preds = %159
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = sub i64 %171, 1
  %173 = trunc i64 %172 to i32
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %168
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 4
  store i32 0, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %168
  br label %184

184:                                              ; preds = %183, %159
  %185 = load i32, i32* @LB_OKAY, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %184, %33, %16
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @LISTBOX_InvalidateItems(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @LISTBOX_DeleteItem(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @RtlMoveMemory(i32*, i32*, i64) #1

declare dso_local i32 @HeapSize(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32* @HeapReAlloc(i32, i32, i32*, i64) #1

declare dso_local i32 @LISTBOX_UpdateScroll(%struct.TYPE_9__*) #1

declare dso_local i32 @LISTBOX_SetTopItem(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @IS_MULTISELECT(%struct.TYPE_9__*) #1

declare dso_local i32 @LISTBOX_SetSelection(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
