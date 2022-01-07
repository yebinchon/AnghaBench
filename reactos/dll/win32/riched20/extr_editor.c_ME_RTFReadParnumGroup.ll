; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_RTFReadParnumGroup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_RTFReadParnumGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i8, %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32, i32, i8*, i32, i8* }

@rtfControl = common dso_local global i32 0, align 4
@rtfDestination = common dso_local global i32 0, align 4
@rtfParNumTextBefore = common dso_local global i32 0, align 4
@rtfParNumTextAfter = common dso_local global i32 0, align 4
@rtfText = common dso_local global i64 0, align 8
@rtfEOF = common dso_local global i64 0, align 8
@rtfGroup = common dso_local global i32 0, align 4
@rtfEndGroup = common dso_local global i32 0, align 4
@rtfBeginGroup = common dso_local global i32 0, align 4
@rtfParAttr = common dso_local global i32 0, align 4
@PFN_BULLET = common dso_local global i32 0, align 4
@PFN_ARABIC = common dso_local global i32 0, align 4
@PFN_UCLETTER = common dso_local global i32 0, align 4
@PFN_UCROMAN = common dso_local global i32 0, align 4
@PFN_LCLETTER = common dso_local global i32 0, align 4
@PFN_LCROMAN = common dso_local global i32 0, align 4
@PFM_NUMBERING = common dso_local global i32 0, align 4
@PFM_NUMBERINGSTART = common dso_local global i32 0, align 4
@PFM_NUMBERINGSTYLE = common dso_local global i32 0, align 4
@PFM_NUMBERINGTAB = common dso_local global i32 0, align 4
@PFNS_PAREN = common dso_local global i32 0, align 4
@PFNS_PLAIN = common dso_local global i32 0, align 4
@PFNS_PERIOD = common dso_local global i32 0, align 4
@PFNS_PARENS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"type %d indent %d start %d txt before %04x txt after %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @ME_RTFReadParnumGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ME_RTFReadParnumGroup(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %6, align 8
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  br label %10

10:                                               ; preds = %111, %85, %76, %69, %49, %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = call i32 @RTFGetToken(%struct.TYPE_9__* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = load i32, i32* @rtfControl, align 4
  %15 = load i32, i32* @rtfDestination, align 4
  %16 = load i32, i32* @rtfParNumTextBefore, align 4
  %17 = call i64 @RTFCheckCMM(%struct.TYPE_9__* %13, i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %10
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = load i32, i32* @rtfControl, align 4
  %22 = load i32, i32* @rtfDestination, align 4
  %23 = load i32, i32* @rtfParNumTextAfter, align 4
  %24 = call i64 @RTFCheckCMM(%struct.TYPE_9__* %20, i32 %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %19, %10
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = call i32 @RTFGetToken(%struct.TYPE_9__* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @rtfText, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %26
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @rtfParNumTextBefore, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i8, i8* %43, align 8
  store i8 %44, i8* %7, align 1
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i8, i8* %47, align 8
  store i8 %48, i8* %8, align 1
  br label %49

49:                                               ; preds = %45, %41
  br label %10

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50, %19
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @rtfEOF, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %195

58:                                               ; preds = %51
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = load i32, i32* @rtfGroup, align 4
  %61 = load i32, i32* @rtfEndGroup, align 4
  %62 = call i64 @RTFCheckCM(%struct.TYPE_9__* %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %3, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %112

69:                                               ; preds = %64
  br label %10

70:                                               ; preds = %58
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %72 = load i32, i32* @rtfGroup, align 4
  %73 = load i32, i32* @rtfBeginGroup, align 4
  %74 = call i64 @RTFCheckCM(%struct.TYPE_9__* %71, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %10

79:                                               ; preds = %70
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = load i32, i32* @rtfControl, align 4
  %82 = load i32, i32* @rtfParAttr, align 4
  %83 = call i64 @RTFCheckCM(%struct.TYPE_9__* %80, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %10

86:                                               ; preds = %79
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %111 [
    i32 136, label %90
    i32 128, label %90
    i32 137, label %91
    i32 135, label %93
    i32 130, label %95
    i32 129, label %97
    i32 133, label %99
    i32 132, label %101
    i32 134, label %103
    i32 131, label %107
  ]

90:                                               ; preds = %86, %86
  br label %111

91:                                               ; preds = %86
  %92 = load i32, i32* @PFN_BULLET, align 4
  store i32 %92, i32* %4, align 4
  br label %111

93:                                               ; preds = %86
  %94 = load i32, i32* @PFN_ARABIC, align 4
  store i32 %94, i32* %4, align 4
  br label %111

95:                                               ; preds = %86
  %96 = load i32, i32* @PFN_UCLETTER, align 4
  store i32 %96, i32* %4, align 4
  br label %111

97:                                               ; preds = %86
  %98 = load i32, i32* @PFN_UCROMAN, align 4
  store i32 %98, i32* %4, align 4
  br label %111

99:                                               ; preds = %86
  %100 = load i32, i32* @PFN_LCLETTER, align 4
  store i32 %100, i32* %4, align 4
  br label %111

101:                                              ; preds = %86
  %102 = load i32, i32* @PFN_LCROMAN, align 4
  store i32 %102, i32* %4, align 4
  br label %111

103:                                              ; preds = %86
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %5, align 8
  br label %111

107:                                              ; preds = %86
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %6, align 8
  br label %111

111:                                              ; preds = %86, %107, %103, %101, %99, %97, %95, %93, %91, %90
  br label %10

112:                                              ; preds = %68
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %186

115:                                              ; preds = %112
  %116 = load i32, i32* @PFM_NUMBERING, align 4
  %117 = load i32, i32* @PFM_NUMBERINGSTART, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @PFM_NUMBERINGSTYLE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @PFM_NUMBERINGTAB, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %122
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load i8*, i8** %6, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 4
  store i8* %132, i8** %135, align 8
  %136 = load i32, i32* @PFNS_PAREN, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 3
  store i32 %136, i32* %139, align 8
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @PFN_BULLET, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %181

143:                                              ; preds = %115
  %144 = load i8, i8* %7, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load i8, i8* %8, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32, i32* @PFNS_PLAIN, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  store i32 %152, i32* %155, align 8
  br label %180

156:                                              ; preds = %147, %143
  %157 = load i8, i8* %8, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 46
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i32, i32* @PFNS_PERIOD, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  store i32 %161, i32* %164, align 8
  br label %179

165:                                              ; preds = %156
  %166 = load i8, i8* %7, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 40
  br i1 %168, label %169, label %178

169:                                              ; preds = %165
  %170 = load i8, i8* %8, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 41
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load i32, i32* @PFNS_PARENS, align 4
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 3
  store i32 %174, i32* %177, align 8
  br label %178

178:                                              ; preds = %173, %169, %165
  br label %179

179:                                              ; preds = %178, %160
  br label %180

180:                                              ; preds = %179, %151
  br label %181

181:                                              ; preds = %180, %115
  %182 = load i8*, i8** %5, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  store i8* %182, i8** %185, align 8
  br label %186

186:                                              ; preds = %181, %112
  %187 = load i32, i32* %4, align 4
  %188 = load i8*, i8** %5, align 8
  %189 = load i8*, i8** %6, align 8
  %190 = load i8, i8* %7, align 1
  %191 = load i8, i8* %8, align 1
  %192 = call i32 @TRACE(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %187, i8* %188, i8* %189, i8 signext %190, i8 signext %191)
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %194 = call i32 @RTFRouteToken(%struct.TYPE_9__* %193)
  br label %195

195:                                              ; preds = %186, %57
  ret void
}

declare dso_local i32 @RTFGetToken(%struct.TYPE_9__*) #1

declare dso_local i64 @RTFCheckCMM(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i64 @RTFCheckCM(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i8*, i8*, i8 signext, i8 signext) #1

declare dso_local i32 @RTFRouteToken(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
