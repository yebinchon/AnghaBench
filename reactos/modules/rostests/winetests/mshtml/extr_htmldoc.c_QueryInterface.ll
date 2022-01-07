; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_QueryInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_QueryInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IOleClientSite = common dso_local global i32 0, align 4
@ClientSite = common dso_local global i32 0, align 4
@IID_IOleDocumentSite = common dso_local global i32 0, align 4
@DocumentSite = common dso_local global i32 0, align 4
@IID_IDocHostUIHandler = common dso_local global i32 0, align 4
@IID_IDocHostUIHandler2 = common dso_local global i32 0, align 4
@DocHostUIHandler = common dso_local global i32 0, align 4
@IID_IOleContainer = common dso_local global i32 0, align 4
@OleContainer = common dso_local global i32 0, align 4
@IID_IOleWindow = common dso_local global i32 0, align 4
@IID_IOleInPlaceSite = common dso_local global i32 0, align 4
@InPlaceSiteWindowless = common dso_local global i32 0, align 4
@IID_IOleCommandTarget = common dso_local global i32 0, align 4
@OleCommandTarget = common dso_local global i32 0, align 4
@IID_IDispatch = common dso_local global i32 0, align 4
@Dispatch = common dso_local global i32 0, align 4
@IID_IServiceProvider = common dso_local global i32 0, align 4
@ServiceProvider = common dso_local global i32 0, align 4
@IID_IOleInPlaceSiteEx = common dso_local global i32 0, align 4
@ipsex = common dso_local global i64 0, align 8
@IID_IOleInPlaceSiteWindowless = common dso_local global i32 0, align 4
@ipsw = common dso_local global i64 0, align 8
@IID_IOleControlSite = common dso_local global i32 0, align 4
@OleControlSite = common dso_local global i32 0, align 4
@IID_IDocHostShowUI = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@IID_IProxyManager = common dso_local global i32 0, align 4
@IID_unk1 = common dso_local global i32 0, align 4
@IID_IThumbnailView = common dso_local global i32 0, align 4
@IID_IRenMailEditor = common dso_local global i32 0, align 4
@IID_unk4 = common dso_local global i32 0, align 4
@IID_unk5 = common dso_local global i32 0, align 4
@IID_IDocHostUIHandlerPriv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"QI(%s)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @QueryInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @QueryInterface(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @IsEqualGUID(i32* @IID_IUnknown, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @IsEqualGUID(i32* @IID_IOleClientSite, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @ClientSite to i8*), i8** %15, align 8
  br label %164

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @IsEqualGUID(i32* @IID_IOleDocumentSite, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @DocumentSite to i8*), i8** %21, align 8
  br label %163

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @IsEqualGUID(i32* @IID_IDocHostUIHandler, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @IsEqualGUID(i32* @IID_IDocHostUIHandler2, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %22
  %31 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @DocHostUIHandler to i8*), i8** %31, align 8
  br label %162

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @IsEqualGUID(i32* @IID_IOleContainer, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @OleContainer to i8*), i8** %37, align 8
  br label %161

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @IsEqualGUID(i32* @IID_IOleWindow, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @IsEqualGUID(i32* @IID_IOleInPlaceSite, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %38
  %47 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @InPlaceSiteWindowless to i8*), i8** %47, align 8
  br label %160

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @IsEqualGUID(i32* @IID_IOleCommandTarget, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @OleCommandTarget to i8*), i8** %53, align 8
  br label %159

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @IsEqualGUID(i32* @IID_IDispatch, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @Dispatch to i8*), i8** %59, align 8
  br label %158

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @IsEqualGUID(i32* @IID_IServiceProvider, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @ServiceProvider to i8*), i8** %65, align 8
  br label %157

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @IsEqualGUID(i32* @IID_IOleInPlaceSiteEx, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i64, i64* @ipsex, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32* @InPlaceSiteWindowless, i32* null
  %75 = bitcast i32* %74 to i8*
  %76 = load i8**, i8*** %5, align 8
  store i8* %75, i8** %76, align 8
  br label %156

77:                                               ; preds = %66
  %78 = load i32, i32* %4, align 4
  %79 = call i64 @IsEqualGUID(i32* @IID_IOleInPlaceSiteWindowless, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i64, i64* @ipsw, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32* @InPlaceSiteWindowless, i32* null
  %86 = bitcast i32* %85 to i8*
  %87 = load i8**, i8*** %5, align 8
  store i8* %86, i8** %87, align 8
  br label %155

88:                                               ; preds = %77
  %89 = load i32, i32* %4, align 4
  %90 = call i64 @IsEqualGUID(i32* @IID_IOleControlSite, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @OleControlSite to i8*), i8** %93, align 8
  br label %154

94:                                               ; preds = %88
  %95 = load i32, i32* %4, align 4
  %96 = call i64 @IsEqualGUID(i32* @IID_IDocHostShowUI, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %99, i32* %3, align 4
  br label %172

100:                                              ; preds = %94
  %101 = load i32, i32* %4, align 4
  %102 = call i64 @IsEqualGUID(i32* @IID_IProxyManager, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %105, i32* %3, align 4
  br label %172

106:                                              ; preds = %100
  %107 = load i32, i32* %4, align 4
  %108 = call i64 @IsEqualGUID(i32* @IID_unk1, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %111, i32* %3, align 4
  br label %172

112:                                              ; preds = %106
  %113 = load i32, i32* %4, align 4
  %114 = call i64 @IsEqualGUID(i32* @IID_IThumbnailView, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %117, i32* %3, align 4
  br label %172

118:                                              ; preds = %112
  %119 = load i32, i32* %4, align 4
  %120 = call i64 @IsEqualGUID(i32* @IID_IRenMailEditor, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %123, i32* %3, align 4
  br label %172

124:                                              ; preds = %118
  %125 = load i32, i32* %4, align 4
  %126 = call i64 @IsEqualGUID(i32* @IID_unk4, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %129, i32* %3, align 4
  br label %172

130:                                              ; preds = %124
  %131 = load i32, i32* %4, align 4
  %132 = call i64 @IsEqualGUID(i32* @IID_unk5, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %135, i32* %3, align 4
  br label %172

136:                                              ; preds = %130
  %137 = load i32, i32* %4, align 4
  %138 = call i64 @IsEqualGUID(i32* @IID_IDocHostUIHandlerPriv, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %141, i32* %3, align 4
  br label %172

142:                                              ; preds = %136
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @wine_dbgstr_guid(i32 %143)
  %145 = call i32 @trace(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153, %92
  br label %155

155:                                              ; preds = %154, %81
  br label %156

156:                                              ; preds = %155, %70
  br label %157

157:                                              ; preds = %156, %64
  br label %158

158:                                              ; preds = %157, %58
  br label %159

159:                                              ; preds = %158, %52
  br label %160

160:                                              ; preds = %159, %46
  br label %161

161:                                              ; preds = %160, %36
  br label %162

162:                                              ; preds = %161, %30
  br label %163

163:                                              ; preds = %162, %20
  br label %164

164:                                              ; preds = %163, %14
  %165 = load i8**, i8*** %5, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* @S_OK, align 4
  store i32 %169, i32* %3, align 4
  br label %172

170:                                              ; preds = %164
  %171 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %168, %140, %134, %128, %122, %116, %110, %104, %98
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @IsEqualGUID(i32*, i32) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_guid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
