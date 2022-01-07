; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cparse.c_cp_string.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cparse.c_cp_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }

@CTOK_EOF = common dso_local global i32 0, align 4
@LJ_ERR_XSTR = common dso_local global i32 0, align 4
@CTOK_STRING = common dso_local global i32 0, align 4
@CTID_INT32 = common dso_local global i32 0, align 4
@CTOK_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @cp_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_string(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 8
  store i8 %8, i8* %4, align 1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = call signext i8 @cp_get(%struct.TYPE_9__* %9)
  br label %11

11:                                               ; preds = %143, %134, %85, %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 8
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* %4, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %149

19:                                               ; preds = %11
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 8
  store i8 %22, i8* %5, align 1
  %23 = load i8, i8* %5, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = load i32, i32* @CTOK_EOF, align 4
  %29 = load i32, i32* @LJ_ERR_XSTR, align 4
  %30 = call i32 @cp_errmsg(%struct.TYPE_9__* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %19
  %32 = load i8, i8* %5, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 92
  br i1 %34, label %35, label %143

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = call signext i8 @cp_get(%struct.TYPE_9__* %36)
  store i8 %37, i8* %5, align 1
  %38 = load i8, i8* %5, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %92 [
    i32 0, label %40
    i32 97, label %45
    i32 98, label %46
    i32 102, label %47
    i32 110, label %48
    i32 114, label %49
    i32 116, label %50
    i32 118, label %51
    i32 101, label %52
    i32 120, label %53
  ]

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = load i32, i32* @CTOK_EOF, align 4
  %43 = load i32, i32* @LJ_ERR_XSTR, align 4
  %44 = call i32 @cp_errmsg(%struct.TYPE_9__* %41, i32 %42, i32 %43)
  br label %142

45:                                               ; preds = %35
  store i8 7, i8* %5, align 1
  br label %142

46:                                               ; preds = %35
  store i8 8, i8* %5, align 1
  br label %142

47:                                               ; preds = %35
  store i8 12, i8* %5, align 1
  br label %142

48:                                               ; preds = %35
  store i8 10, i8* %5, align 1
  br label %142

49:                                               ; preds = %35
  store i8 13, i8* %5, align 1
  br label %142

50:                                               ; preds = %35
  store i8 9, i8* %5, align 1
  br label %142

51:                                               ; preds = %35
  store i8 11, i8* %5, align 1
  br label %142

52:                                               ; preds = %35
  store i8 27, i8* %5, align 1
  br label %142

53:                                               ; preds = %35
  store i8 0, i8* %5, align 1
  br label %54

54:                                               ; preds = %81, %53
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = call signext i8 @cp_get(%struct.TYPE_9__* %55)
  %57 = call i32 @lj_char_isxdigit(i8 signext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = load i8, i8* %5, align 1
  %61 = sext i8 %60 to i32
  %62 = shl i32 %61, 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i8, i8* %64, align 8
  %66 = call i32 @lj_char_isdigit(i8 signext %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i8, i8* %70, align 8
  %72 = sext i8 %71 to i32
  %73 = sub nsw i32 %72, 48
  br label %81

74:                                               ; preds = %59
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i8, i8* %76, align 8
  %78 = sext i8 %77 to i32
  %79 = and i32 %78, 15
  %80 = add nsw i32 %79, 9
  br label %81

81:                                               ; preds = %74, %68
  %82 = phi i32 [ %73, %68 ], [ %80, %74 ]
  %83 = add nsw i32 %62, %82
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %5, align 1
  br label %54

85:                                               ; preds = %54
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = load i8, i8* %5, align 1
  %88 = sext i8 %87 to i32
  %89 = and i32 %88, 255
  %90 = trunc i32 %89 to i8
  %91 = call i32 @cp_save(%struct.TYPE_9__* %86, i8 signext %90)
  br label %11

92:                                               ; preds = %35
  %93 = load i8, i8* %5, align 1
  %94 = call i32 @lj_char_isdigit(i8 signext %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %141

96:                                               ; preds = %92
  %97 = load i8, i8* %5, align 1
  %98 = sext i8 %97 to i32
  %99 = sub nsw i32 %98, 48
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %5, align 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = call signext i8 @cp_get(%struct.TYPE_9__* %101)
  %103 = call i32 @lj_char_isdigit(i8 signext %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %96
  %106 = load i8, i8* %5, align 1
  %107 = sext i8 %106 to i32
  %108 = mul nsw i32 %107, 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i8, i8* %110, align 8
  %112 = sext i8 %111 to i32
  %113 = sub nsw i32 %112, 48
  %114 = add nsw i32 %108, %113
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %5, align 1
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = call signext i8 @cp_get(%struct.TYPE_9__* %116)
  %118 = call i32 @lj_char_isdigit(i8 signext %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %105
  %121 = load i8, i8* %5, align 1
  %122 = sext i8 %121 to i32
  %123 = mul nsw i32 %122, 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i8, i8* %125, align 8
  %127 = sext i8 %126 to i32
  %128 = sub nsw i32 %127, 48
  %129 = add nsw i32 %123, %128
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %5, align 1
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = call signext i8 @cp_get(%struct.TYPE_9__* %131)
  br label %133

133:                                              ; preds = %120, %105
  br label %134

134:                                              ; preds = %133, %96
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %136 = load i8, i8* %5, align 1
  %137 = sext i8 %136 to i32
  %138 = and i32 %137, 255
  %139 = trunc i32 %138 to i8
  %140 = call i32 @cp_save(%struct.TYPE_9__* %135, i8 signext %139)
  br label %11

141:                                              ; preds = %92
  br label %142

142:                                              ; preds = %141, %52, %51, %50, %49, %48, %47, %46, %45, %40
  br label %143

143:                                              ; preds = %142, %31
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = load i8, i8* %5, align 1
  %146 = call i32 @cp_save(%struct.TYPE_9__* %144, i8 signext %145)
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %148 = call signext i8 @cp_get(%struct.TYPE_9__* %147)
  br label %11

149:                                              ; preds = %11
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = call signext i8 @cp_get(%struct.TYPE_9__* %150)
  %152 = load i8, i8* %4, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 34
  br i1 %154, label %155, label %165

155:                                              ; preds = %149
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  %161 = call i32 @lj_buf_str(i32 %158, i32* %160)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* @CTOK_STRING, align 4
  store i32 %164, i32* %2, align 4
  br label %188

165:                                              ; preds = %149
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 2
  %168 = call i32 @sbuflen(i32* %167)
  %169 = icmp ne i32 %168, 1
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %172 = call i32 @cp_err_token(%struct.TYPE_9__* %171, i8 signext 39)
  br label %173

173:                                              ; preds = %170, %165
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = call i64* @sbufB(i32* %175)
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i8
  %179 = sext i8 %178 to i64
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  store i64 %179, i64* %182, align 8
  %183 = load i32, i32* @CTID_INT32, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  %187 = load i32, i32* @CTOK_INTEGER, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %173, %155
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local signext i8 @cp_get(%struct.TYPE_9__*) #1

declare dso_local i32 @cp_errmsg(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @lj_char_isxdigit(i8 signext) #1

declare dso_local i32 @lj_char_isdigit(i8 signext) #1

declare dso_local i32 @cp_save(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @lj_buf_str(i32, i32*) #1

declare dso_local i32 @sbuflen(i32*) #1

declare dso_local i32 @cp_err_token(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i64* @sbufB(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
